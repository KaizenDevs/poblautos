class MotorcyclesController < ApplicationController

  def new_motorcycles
    search_params = params
    if params.has_key?(:vehicle_class)
      redirect_to vehicles_search_filter_path(search_params)
    end
    @vehicles = Vehicle.where(used: false, vehicle_class: 1).paginate(:page => params[:page], :per_page => 9)
    @page = PageContent.find(params[:id])
  end

  def used
    search_params = params
    if params.has_key?(:vehicle_class)
      redirect_to vehicles_search_filter_path(search_params)
    end
    @vehicles = Vehicle.where(used: true, vehicle_class: 1).paginate(:page => params[:page], :per_page => 9)
    @page = PageContent.find(params[:id])
  end

end
