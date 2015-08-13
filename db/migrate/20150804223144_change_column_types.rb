class ChangeColumnTypes < ActiveRecord::Migration
  def change
    change_column :vehicles, :license_plate,  :integer
    change_column :vehicles, :gas,  :integer
    change_column :vehicles, :transmission,  :integer
    add_column :vehicles, :air_conditioning, :boolean
    add_column :vehicles, :shield, :boolean
  end
end
