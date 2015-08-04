class PagesController < ApplicationController
  def home
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
