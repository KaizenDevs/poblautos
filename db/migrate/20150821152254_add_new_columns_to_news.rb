class AddNewColumnsToNews < ActiveRecord::Migration
  def change
    add_column :news, :author, :string
    add_column :news, :about, :text
  end
end
