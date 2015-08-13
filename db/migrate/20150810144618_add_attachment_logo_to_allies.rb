class AddAttachmentLogoToAllies < ActiveRecord::Migration
  def self.up
    change_table :allies do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :allies, :logo
  end
end
