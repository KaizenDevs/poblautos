class PagesController < ApplicationController
  def home
    @vehicles = Vehicle.all
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
