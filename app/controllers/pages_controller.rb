class PagesController < ApplicationController
  def home
    @vehicles = Vehicle.all
    @new_vehicles = Vehicle.where(used: false)
    @opinions = Opinion.where(visible: true).order(:number)
    @news = News.all.reverse
  end

  def company
  end

  def services
  end

  def news
    @news = News.all.reverse
    @categories = Category.all
  end

  def contact
  end
end
