class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :vans
  has_many :your_bookings, through: :vans, source: :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :bio, length: { maximum: 500 }
end
