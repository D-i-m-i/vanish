class AddVanToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :van, null: false, foreign_key: true
  end
end
