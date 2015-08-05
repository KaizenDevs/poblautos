class PagesController < ApplicationController
  def home
    @vehicles = Vehicle.all
    @new_vehicles = Vehicle.where(used: false)
    @opinions = Opinion.where(visible: true).order(:number)
  end

  def company
  end

  def services
  end

  def news
  end

  def contact
  end
end
