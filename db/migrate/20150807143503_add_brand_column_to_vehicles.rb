class AddBrandColumnToVehicles < ActiveRecord::Migration
  def change
    add_reference :vehicles, :brand, index: true, foreign_key: true
  end
end
