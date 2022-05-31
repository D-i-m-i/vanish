class CreateVans < ActiveRecord::Migration[6.1]
  def change
    create_table :vans do |t|
      t.string :name
      t.text :overview
      t.string :make_model_year
      t.boolean :kitchenette
      t.boolean :toilet
      t.boolean :solar_power
      t.float :price, default: 0.0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
