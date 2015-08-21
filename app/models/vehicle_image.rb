  class VehicleImage < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :home => "245x163#", :show => "170x113#", :main => "703x474#", convert_options: { home: " -gravity center -crop '245x245+0+0'", show: " -gravity center -crop '170x170+0+0'", main: " -gravity center -crop '703x703+0+0'" } }, :default_url => "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :vehicle
end
