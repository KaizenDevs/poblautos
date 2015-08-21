class LinksController < ApplicationController
  before_action :authenticate_user!
  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      redirect_to links_path
    end
  end

  def index
    @links = Link.all.order("id ASC")
  end

  private
  def link_params
    params.require(:link).permit(:url)
  end
end
