class VehiclesController < ApplicationController
  before_action :modal_procedure_new
  def new_vehicles
    @vehicles = Vehicle.where(used: false)
  end

  def used
    @vehicles = Vehicle.where(used: true)
  end

  def index
    @vehicles = Vehicle.all
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)

    if @vehicle.save
      flash[:notice] = "El vehículo ha sido creado éxitosamente."
      redirect_to vehicles_path
    else
      flash[:alert] = "El vehículo no se ha podido crear, inténtalo de nuevo."
      render 'new'
    end
  end

  def update
    @vehicle = Vehicle.find(params[:id])

    if @vehicle.update(vehicle_params)
      flash[:notice] = "El vehículo ha sido actualizado éxitosamente."
      redirect_to vehicles_path
    else
      flash[:alert] = "No se ha podido actualizar el vehículo. Inténtalo nuevamente."
      render 'edit'
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])

    @vehicle.destroy
    redirect_to vehicles_path
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:name, :year, :state, :price, :transmission, :gas, :vehicle_model, :engine, :mileage, :upholstery, :vehicle_type, :used, :video, :color, :license_plate, :license_plate_city, :comments, :air_conditioning, :shield, :image)
  end
end
