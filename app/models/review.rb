class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  validates :note, presence: true
end
