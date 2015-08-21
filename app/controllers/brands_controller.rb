class BrandsController < ApplicationController
  before_action :authenticate_user!

  def index
    @brands = Brand.all
  end

  def show
  end

  def new
    @brand = Brand.new
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      flash[:notice] = "La categoría se ha creado exitosamente"
      redirect_to brands_path
    else
      flash[:alert] = "La categoría no se ha podido crear. Inténtalo de nuevo."
      render 'new'
    end
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brand_params)
      flash[:notice] = "La categoría se ha actualizado correctamente."
      redirect_to brands_path
    else
      flash[:alert] = "La categoría no se ha podido actualizar. Inténtalo de nuevo."
      render 'edit'
    end
  end

  def destroy
    @brand = Brand.find(params[:id])
    @brand.destroy
    redirect_to brands_path
  end

  private
  def brand_params
    params.require(:brand).permit(:name, :image)
  end

end
