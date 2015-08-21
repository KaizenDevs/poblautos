class Brand < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :nav_bar => "60x60#", convert_options: { nav_bar: " -gravity center -crop '60x60+0+0'" } }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  has_many :vehicles, dependent: :destroy
end
