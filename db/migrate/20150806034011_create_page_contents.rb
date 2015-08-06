class CreatePageContents < ActiveRecord::Migration
  def change
    create_table :page_contents do |t|
      t.string :title
      t.string :content
      t.string :content1
      t.string :content2
      t.string :content3

      t.timestamps null: false
    end
  end
end
