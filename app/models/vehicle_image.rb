  class VehicleImage < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :home => "245x163#", convert_options: { home: " -gravity center -crop '245x245+0+0'" } }, :default_url => "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :vehicle
end
