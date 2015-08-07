class CategoriesController < ApplicationController
  before_action :modal_procedure_new
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "La categoría se ha creado exitosamente"
      redirect_to categories_path
    else
      flash[:alert] = "La categoría no se ha podido crear. Inténtalo de nuevo."
      render 'new'
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = "La categoría se ha actualizado correctamente."
      redirect_to categories_path
    else
      flash[:alert] = "La categoría no se ha podido actualizar. Inténtalo de nuevo."
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end

end
