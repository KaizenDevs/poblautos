class ProceduresController < ApplicationController
  before_action :modal_procedure_new, :except => [:create]
  def index
    @procedures = Procedure.all
    @procedure = Procedure.new
  end

  # def new
  #   @procedure = Procedure.new
  # end

  def create
    @procedure = Procedure.new(procedure_params)

    @procedure.save
    redirect_to @procedure
  end

  def show


  end

  def edit
    @procedure = Procedure.find(params[:id])
  end
  def update
    @procedure = Procedure.find(params[:id])

    if @procedure.update(procedure_params)
      redirect_to index
    else
      render 'edit'
    end
  end

  def destroy
    @procedure = Procedure.find(params[:id])
    @procedure.destroy

    redirect_to procedures_path
  end


  private
  def procedure_params
    params.require(:procedure).permit(:name, :phone, :email, :startinglicence,:taxpayment,:historial,:transfer,:phototicket,:soat, :status )
  end
end
