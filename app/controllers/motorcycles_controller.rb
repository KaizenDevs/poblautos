class MotorcyclesController < ApplicationController

  def new_motorcycles
    @vehicles = Vehicle.where(used: false, vehicle_class: 1)
  end

  def used
    @vehicles = Vehicle.where(used: true, vehicle_class: 1)
  end

end
