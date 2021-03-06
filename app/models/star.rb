class Star < ApplicationRecord
  geocoded_by :city
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  validate :attached_file?
  after_validation :geocode,  if: :will_save_change_to_city?
  belongs_to :user

  include PgSearch::Model
  pg_search_scope :search_by_name_and_more,
    against: [ :name, :city, :category, :price, :gender, :size ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

private

  def attached_file?
    errors.add(:base, 'please insert a file.') unless photos.attached?
  end

end
