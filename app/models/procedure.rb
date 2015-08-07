class Procedure < ActiveRecord::Base
  after_initialize :init

  enum status: [:start,:ongoing, :finished]

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
