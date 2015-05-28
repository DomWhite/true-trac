class MarkersController < ApplicationController

  def index

  end

  def new
    if !logged_in? 
      redirect_to '/'
    else
      @marker = Marker.new
    end
  end

  def create
    @marker = Marker.new(marker_params)
    if @marker.save
      redirect_to '/map'
    else
      render :new
    end
  end

  def show
    markers = Marker.all
    render :json => markers.to_json
  end

  def edit
    @marker = Marker.find(params[:id])
  end

  def update
    marker = Marker.find(params[:id])
    if marker.update(marker_params)
      redirect_to '/'
    else
      render :edit
    end
  end


  def marker_params
    params.require(:marker).permit(:title, :image_url, :lat, :lng, :description, :photo, :category_id, :user_id)
  end

end