class Van < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :make_model_year, :name, :overview, :address ],
  associated_against: {
    user: [ :name ]
  },
  using: {
    tsearch: { prefix: true }
  }

  validates :name, presence: true
  validates :overview, presence: true
  validates :overview, presence: true
  validates :make_model_year, presence: true
  validates :kitchenette, inclusion: { in: [true, false] }
  validates :toilet, inclusion: { in: [true, false] }
  validates :solar_power, inclusion: { in: [true, false] }
  validates :price, numericality: true
end
