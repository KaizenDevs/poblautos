class PagesController < ApplicationController

  def home
    @vehicles = Vehicle.all
    @new_vehicles = Vehicle.where(used: false)
    @opinions = Opinion.where(visible: true).order(:number)
    @news = News.all.reverse
    @most_voted = News.order(:rating).reverse
    @page = PageContent.find(params[:id])
    @allies = Ally.all
    search_params = params
    if params.has_key?(:brand)
      redirect_to vehicles_search_filter_path(search_params)
    end
  end

  def company
    @page = PageContent.find(params[:id])
  end

  def services
    @page = PageContent.find(params[:id])
  end

  def news
    if params.has_key?(:category_id)
      @news = News.where(category: Category.find(params[:category_id])).reverse
      @news = News.paginate(:page => params[:page], :per_page => 4)
    else
      @news = News.all.reverse
      @news = News.paginate(:page => params[:page], :per_page => 4)
    end
    @page = PageContent.find(params[:id])
    @categories = Category.all
    @most_voted = News.order(:rating).last(3).reverse
  end

  def contact
    @contact = Contact.new
    @page = PageContent.find(params[:id])
  end
end
