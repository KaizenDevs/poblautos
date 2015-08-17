# == Schema Information
#
# Table name: vehicles
#
#  id                 :integer          not null, primary key
#  name               :string
#  year               :integer
#  state              :string
#  price              :integer
#  transmission       :integer
#  gas                :integer
#  vehicle_model      :string
#  engine             :string
#  mileage            :integer
#  upholstery         :string
#  vehicle_type       :integer
#  used               :boolean
#  video              :string
#  color              :string
#  license_plate      :integer
#  comments           :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  air_conditioning   :boolean
#  shield             :boolean
#  license_plate_city :string
#

class Vehicle < ActiveRecord::Base
  has_many :vehicle_images, dependent: :destroy
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  accepts_nested_attributes_for :vehicle_images, :limit => 5, :reject_if => :all_blank, allow_destroy: true
  belongs_to :brand
  enum transmission: [:mecánico, :automático]
  enum gas: [:gasolina, :"a gas", :eléctrico]
  enum vehicle_type: [:camioneta, :sedan, :coupe, :convertible, :"no aplica"]
  enum vehicle_class: [:vehículo, :moto]

end
