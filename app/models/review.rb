class Review < ApplicationRecord
  belongs_to :booking
  validates :note, presence: true
end
