class AddMapsToWalk < ActiveRecord::Migration
  def change
    add_column :walks, :latitude, :float
    add_column :walks, :longitude, :float
    add_column :walks, :address, :string
  end
end
