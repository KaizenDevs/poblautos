class AddVisibleColumnToOpinions < ActiveRecord::Migration
  def change
    add_column :opinions, :visible, :boolean
  end
end
