class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.text :opinion
      t.string :name
      t.string :position

      t.timestamps null: false
    end
  end
end
