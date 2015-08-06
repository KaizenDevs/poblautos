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
  end

  def company
    @page = PageContent.find(params[:id])
  end

  def services
    @technical_service = PageContent.find_by(title: "Servicio Técnico").html
    @car_insurance = PageContent.find_by(title: "Seguros de Carro").html
    @poblautos_procedures = PageContent.find_by(title: "Trámites Poblautos").html
    @video01 = PageContent.find_by(title: "Video 01").html
    @video02 = PageContent.find_by(title: "Video 02").html
    @video03 = PageContent.find_by(title: "Video 03").html
  end

  def news
    @news = News.all.reverse
    @categories = Category.all
    @most_voted = News.order(:rating).reverse
  end

  def contact
  end
end
