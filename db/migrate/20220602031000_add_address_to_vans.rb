class AddAddressToVans < ActiveRecord::Migration[6.1]
  def change
    add_column :vans, :address, :string
    add_column :vans, :latitude, :float
    add_column :vans, :longitude, :float
  end
end
