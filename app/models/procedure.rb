class Procedure < ActiveRecord::Base
  after_initialize :init

  def init
      self.startinglicence  ||= false
      self.taxpayment  ||= false
      self.historial  ||= false
      self.transfer  ||= false
      self.phototicket  ||= false
      self.soat  ||= false
  end
end

