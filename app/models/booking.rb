class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :van

  validates :start_date, presence: true
  validates :start_date, comparison: { greater_than: :end_date }
  validates :end_date, presence: true
  validates :total_price, numericality: true
end
