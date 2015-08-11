class VehiclesController < ApplicationController

  def new_vehicles
    @vehicles = Vehicle.where(used: false, vehicle_class: 0)
    @vehicles = Vehicle.paginate(:page => params[:page], :per_page => 9)
  end

  def used
    @vehicles = Vehicle.where(used: true, vehicle_class: 0)
    @vehicles = Vehicle.paginate(:page => params[:page], :per_page => 9)
  end

  def search_filter
    search_params = {brand: nil, color: nil, shield: nil, model: nil, price: nil, year: nil, gas: nil, license_plate: nil, transmission: nil, air_conditioning: nil}
    if params["max-year"] != "Todos" && params["min-year"] == "Todos"
      search_params[:year] = -Float::INFINITY..params["max-year"].to_i
    elsif params["min-year"] != "Todos" && params["max-year"] == "Todos"
      search_params[:year] = params["min-year"].to_i..Float::INFINITY
    elsif params["min-year"] != "Todos" && params["max-year"] != "Todos"
      search_params[:year] = params["min-year"].to_i..params["max-year"].to_i
    end

    if params["max-price"] != "Todos" && params["min-price"] == "Todos"
      search_params[:price] = -Float::INFINITY..params["max-price"].to_i
    elsif params["min-price"] != "Todos" && params["max-price"] == "Todos"
      search_params[:price] = params["min-price"].to_i..Float::INFINITY
    elsif params["min-price"] != "Todos" && params["max-price"] != "Todos"
      search_params[:price] = params["min-price"].to_i..params["max-price"].to_i
    end

    params.each do |k, v|
      if v != "Todos" && v != "search_filter" && v !=  "BUSCAR" && v != "vehicles" && v != "1"
        if v == "true"
          search_params[k] = true
        elsif v == "false"
          search_params[k] = false
        elsif v == "Par"
          search_params[k] = [0, 2, 4, 6, 8]
        elsif v == "Impar"
          search_params[k] = [1, 3, 5, 7, 9]
        else
          search_params[k] = params[k]
        end
      end
    end
    search_params.delete_if { |k, v| v.nil? || k == "max-year" || k == "min-year" || k == "max-price" || k == "min-price" }
    if search_params.count == 0
      @vehicles = Vehicle.all
    else
      @vehicles = Vehicle.where(search_params)
    end
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
    params.require(:vehicle).permit(:name, :year, :state, :price, :transmission, :gas, :vehicle_model, :engine, :mileage, :upholstery, :vehicle_type, :used, :video, :color, :license_plate, :license_plate_city, :comments, :air_conditioning, :shield, :image, :brand_id, :vehicle_class)
  end
end
