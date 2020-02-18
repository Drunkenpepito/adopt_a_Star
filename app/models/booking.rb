class Booking < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :star
  belongs_to :user

end
