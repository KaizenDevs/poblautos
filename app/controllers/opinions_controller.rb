class OpinionsController < ApplicationController
  def index
    @opinions = Opinion.all
  end

  def show
  end

  def new
    @opinion = Opinion.new
  end

  def edit
    @opinion = Opinion.find(params[:id])
  end

  def create
    @opinion = Opinion.new(opinion_params)

    if @opinion.save
      flash[:notice] = "La opinión ha sido creada con éxito."
      redirect_to opinions_path
    else
      flash[:alert] = "Ha ocurrido un error y no se ha guardado la opinión. Inténtalo de nuevo."
      render 'new'
    end
  end

  def update
    @opinion = Opinion.find(params[:id])

    if @opinion.update(opinion_params)
      flash[:notice] = "La opinión ha sido actualizada con éxito."
      redirect_to opinions_path
    else
      flash[:alert] = "Ha ocurrido un error y no se ha actualizado la opinión. Inténtalo de nuevo."
      render 'edit'
    end
  end

  def destroy
    @opinion = Opinion.find(params[:id])
    @opinion.destroy
    redirect_to opinions_path
  end

  private

  def opinion_params
    params.require(:opinion).permit(:opinion, :name, :position, :avatar, :number, :visible)
  end
end
