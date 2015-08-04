# == Schema Information
#
# Table name: opinions
#
#  id                  :integer          not null, primary key
#  opinion             :text
#  name                :string
#  position            :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  number              :integer
#  visible             :boolean
#

require 'test_helper'

class OpinionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
