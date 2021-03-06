 class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :stars
  has_many :reviews

  has_one_attached :photo

  def is_admin?
    self.permission == 'admin'
  end
end
