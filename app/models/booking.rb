class Booking < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
