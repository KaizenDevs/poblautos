class PagesController < ApplicationController
  def home
    @vehicles = Vehicle.all
    @new_vehicles = Vehicle.where(used: false)
    @opinions = Opinion.where(visible: true).order(:number)
    @news = News.all.reverse
    @most_voted = News.order(:rating).reverse
  end

  def company
  end

  def services
  end

  def news
    @news = News.all.reverse
    @categories = Category.all
    @most_voted = News.order(:rating).reverse
  end

  def contact
  end
end
