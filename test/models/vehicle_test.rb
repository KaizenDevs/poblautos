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
#  upholstery         :integer
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
#  brand_id           :integer
#  vehicle_class      :integer
#  description        :text
#  internal_features  :text
#  external_features  :text
#  safety_features    :text
#  extras             :text
#

require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
