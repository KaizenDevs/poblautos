class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.integer :year
      t.string :state
      t.integer :price
      t.string :transmission
      t.string :gas
      t.string :model
      t.string :engine
      t.integer :mileage
      t.string :upholstery
      t.integer :type
      t.boolean :used
      t.string :video
      t.string :color
      t.string :license_plate
      t.text :comments

      t.timestamps null: false
    end
  end
end
