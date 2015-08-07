class AddColumnToPageContents < ActiveRecord::Migration
  def change
    add_column :page_contents, :image, :string
    add_column :page_contents, :image1, :string
    add_column :page_contents, :image2, :string
    add_column :page_contents, :image3, :string
    add_column :page_contents, :image4, :string
    add_column :page_contents, :image5, :string
    add_column :page_contents, :image6, :string
    add_column :page_contents, :image7, :string
    add_column :page_contents, :image8, :string
    add_column :page_contents, :image9, :string
    add_column :page_contents, :image10, :string
  end
end
