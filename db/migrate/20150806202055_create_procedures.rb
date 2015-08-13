class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.boolean :startinglicence
      t.boolean :taxpayment
      t.boolean :historial
      t.boolean :transfer
      t.boolean :phototicket
      t.boolean :soat

      t.timestamps null: false
    end
  end
end
