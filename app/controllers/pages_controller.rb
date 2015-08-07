class PagesController < ApplicationController

  def home
    @vehicles = Vehicle.all
    @new_vehicles = Vehicle.where(used: false)
    @opinions = Opinion.where(visible: true).order(:number)
    @news = News.all.reverse
    @most_voted = News.order(:rating).reverse
    # @welcome_title = PageContent.find_by(title: "Título Bienvenida").html
    # @secondary_paragraphs = PageContent.find_by(title: "Párrafos Secundarios", page: "Inicio").html
    @page = PageContent.find(params[:id])
    @allies = Ally.all
  end

  def company
    @page = PageContent.find(params[:id])
  end

  def services
    @page = PageContent.find(params[:id])
  end

  def news
    @news = News.all.reverse
    @news = News.paginate(:page => params[:page], :per_page => 4)
    @categories = Category.all
    @most_voted = News.order(:rating).reverse

  end

  def contact
    @contact = Contact.new
  end
end
