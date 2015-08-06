class AddNumberColumnToOpinionsTable < ActiveRecord::Migration
  def change
    add_column :opinions, :number, :integer
  end
end
