class AddAttachmentImageToVehicleImages < ActiveRecord::Migration
  def self.up
    change_table :vehicle_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :vehicle_images, :image
  end
end
