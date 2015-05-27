class LocationsController < ApplicationController

  def create
    @location = Location.new
    @location.user_id = current_user.id
    @location.lat = params[:lat]
    @location.lng = params[:lng]

    if @location.save
      render :json => @location
    else
      render :json => @location
    end
  end  

  def location_params
    params_require(:location).permit(:user_id, :lat, :lng)
  end
end