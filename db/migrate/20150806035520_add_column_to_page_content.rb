class AddColumnToPageContent < ActiveRecord::Migration
  def change
    add_column :page_contents, :page, :string
  end
end
