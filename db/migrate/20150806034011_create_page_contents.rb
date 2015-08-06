class CreatePageContents < ActiveRecord::Migration
  def change
    create_table :page_contents do |t|
      t.string :title
      t.string :html

      t.timestamps null: false
    end
  end
end
