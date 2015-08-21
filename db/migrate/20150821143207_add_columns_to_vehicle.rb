class AddColumnsToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :description, :text
    add_column :vehicles, :internal_features, :text
    add_column :vehicles, :external_features, :text
    add_column :vehicles, :safety_features, :text
    add_column :vehicles, :extras, :text
  end
end
