# == Schema Information
#
# Table name: procedures
#
#  id              :integer          not null, primary key
#  name            :string
#  phone           :string
#  email           :string
#  startinglicence :boolean
#  taxpayment      :boolean
#  historial       :boolean
#  transfer        :boolean
#  phototicket     :boolean
#  soat            :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  status          :integer
#

require 'test_helper'

class ProcedureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
