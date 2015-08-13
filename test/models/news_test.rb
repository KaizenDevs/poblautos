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

require 'test_helper'

class NewsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
