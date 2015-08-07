class AddColumnToProcedures < ActiveRecord::Migration
  def change
    add_column :procedures, :status, :integer
  end
end
