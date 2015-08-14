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
