class AddAvatarColumnsToOpinions < ActiveRecord::Migration
  def up
    add_attachment :opinions, :avatar
  end

  def down
    remove_attachment :opinions, :avatar
  end
end
