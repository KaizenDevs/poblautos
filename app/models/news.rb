# == Schema Information
#
# Table name: news
#
#  id                 :integer          not null, primary key
#  title              :string
#  content            :text
#  category_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  highlight          :boolean
#  rating             :integer
#  raters             :integer
#

class News < ActiveRecord::Base
  belongs_to :category
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :normal => "600x400>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
