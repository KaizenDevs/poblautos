class AddVehicleClassToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :vehicle_class, :integer
  end
end
