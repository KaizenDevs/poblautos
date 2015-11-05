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

class Procedure < ActiveRecord::Base
  after_initialize :init

  enum status: [:inicial, :en_proceso, :finalizado]

  def init
     self.status ||= 0
     startinglicence  ||= false
     taxpayment  ||= false
     historial  ||= false
     transfer  ||= false
     phototicket  ||= false
     soat  ||= false
  end
end
