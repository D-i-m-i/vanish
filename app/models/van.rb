class Van < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true
  validates :overview, presence: true
  validates :overview, length: { maximum: 500 }
  validates :make_model_year, presence: true
  validates :kitchenette, inclusion: { in: [true, false] }
  validates :toilet, inclusion: { in: [true, false] }
  validates :solar_power, inclusion: { in: [true, false] }
  validates :price, numericality: true
end
