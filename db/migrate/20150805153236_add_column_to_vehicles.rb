class AddColumnToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :license_plate_city, :string
  end
end
