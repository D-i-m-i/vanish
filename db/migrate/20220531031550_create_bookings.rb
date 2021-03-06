class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.float :total_price, default: 0.0
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
