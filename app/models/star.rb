class Star < ApplicationRecord
  geocoded_by :city
  has_many_attached :photos
  has_many :bookings
  validate :attached_file?
  after_validation :geocode,  if: :will_save_change_to_city?

private

  def attached_file?
    errors.add(:base, 'please insert a file.') unless photo.attached?
  end

end
