class ChangeColumnTypes < ActiveRecord::Migration
  def change
    add_column :vehicles, :air_conditioning, :boolean
    add_column :vehicles, :shield, :boolean
  end
end
