class CreateVehicleImages < ActiveRecord::Migration
  def change
    create_table :vehicle_images do |t|
      t.references :vehicle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
