class Booking < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :star
  belongs_to :user

  after_validation :set_time

  def set_time
    puts "#{self.from} to #{self.to}"
    self.time = (self.to - self.from).to_i
    puts "==============================="
  end
end
