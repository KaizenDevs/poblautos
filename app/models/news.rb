# == Schema Information
#
# Table name: news
#
#  id                        :integer          not null, primary key
#  title                     :string
#  content                   :text
#  category_id               :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  image_file_name           :string
#  image_content_type        :string
#  image_file_size           :integer
#  image_updated_at          :datetime
#  highlight                 :boolean
#  rating                    :integer
#  raters                    :integer
#  author                    :string
#  about                     :text
#  author_image_file_name    :string
#  author_image_content_type :string
#  author_image_file_size    :integer
#  author_image_updated_at   :datetime
#

class News < ActiveRecord::Base
  belongs_to :category
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :normal => "600x400>", :home => "337x224#", convert_options: { home: " -gravity center -crop '337x337+0+0'" } }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  has_attached_file :author_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
  validates_attachment_content_type :author_image, :content_type => /\Aimage\/.*\Z/

  def previous
    News.limit(1).order("id DESC").where("id < ?", id).first
  end

  def next
    News.limit(1).order("id DESC").where("id > ?", id).first
  end
end
