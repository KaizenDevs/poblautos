class AlliesController < ApplicationController
  before_action :authenticate_user!

  def index
    @allies = Ally.all
  end
  def new
    @ally = Ally.new
  end
  def create
    @ally = Ally.new(ally_params)
    @ally.save
    redirect_to action: "index"
  end
  def show
    @ally = Ally.find(params[:id])
  end
  def edit
    @ally = Ally.find(params[:id])
  end
  def update
    @ally = Ally.find(params[:id])
    if @ally.update(ally_params)
      redirect_to action: "index"
    else
      render 'edit'
    end
  end
  def destroy
    @ally = Ally.find(params[:id])
    @ally.destroy
    redirect_to action: "index"
  end
  private
  def ally_params
    params.require(:ally).permit(:name, :logo, :link)
  end
end
