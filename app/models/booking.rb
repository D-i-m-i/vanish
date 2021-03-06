class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :van
  has_one :host, through: :user, source: :van

  validates :total_price, numericality: true
  validate :end_after_start
  validates :start_date, :end_date, :presence => true

  private
  def end_after_start
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
