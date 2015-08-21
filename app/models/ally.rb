class Ally < ActiveRecord::Base
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100#", convert_options: { thumb: " -gravity center -crop '100x100+0+0'" } }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
