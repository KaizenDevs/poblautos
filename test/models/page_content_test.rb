# == Schema Information
#
# Table name: page_contents
#
#  id         :integer          not null, primary key
#  title      :string
#  html       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  page       :string
#

require 'test_helper'

class PageContentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
