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

  def show
    (1..user_count).each do |num|
      record = Location.find(user_id:num).last
    end 

    location = Location.all
    render :json => location.to_json
  end  

  def location_params
    params_require(:location).permit(:user_id, :lat, :lng)
  end

  def self.user_count
      all = Location.all
      @count = all.select(:user_id).uniq.count
  end
end