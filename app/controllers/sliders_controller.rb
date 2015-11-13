class SlidersController < ApplicationController
  before_action :authenticate_user!

  def index
    @sliders = Slider.all
  end

  def new
  end

  def edit
    @slider = Slider.find(params[:id])
  end

  def update
    @slider = Slider.find(params[:id])
    if @slider.update(slider_params)
        flash[:notice] = "El slider se ha actualizado con éxito."
        redirect_to sliders_path
      else
        flash[:alert] = "El slider no se ha podido actualizar. Inténtalo de nuevo."
        render 'edit'
    end
  end

  private

  def slider_params
    params.require(:slider).permit(:title, :subtitle, :image)
  end
end
