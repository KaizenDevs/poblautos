class AddColumnsToNews < ActiveRecord::Migration
  def change
    add_column :news, :rating, :integer
    add_column :news, :raters, :integer
  end
end
