class Star < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  validate :attached_file?

private

  def attached_file?
    errors.add(:base, 'please insert a file.') unless photo.attached?
  end

end


