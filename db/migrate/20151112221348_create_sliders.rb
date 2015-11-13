class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :title
      t.string :subtitle

      t.timestamps null: false
    end
  end
end
