class OpinionsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @opinion = Opinion.new
  end

  def edit
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
  end

  def destroy
  end

  private

  def opinion_params
    params.require(:opinion).permit(:opinion, :name, :position, :avatar)
  end
end
