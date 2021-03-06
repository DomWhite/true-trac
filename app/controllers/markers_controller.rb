class MarkersController < ApplicationController

  def index

  end

  def new
    if !logged_in? 
      redirect_to '/'
    else
      @marker = Marker.new
      @markers_new_view = true #to check if we're on this view
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
      redirect_to '/map'
    else
      render :edit
    end
  end

  def destroy
    @marker = Marker.find(params[:id])
    @marker.destroy
    redirect_to '/options'
  end

  def users_markers_edit
    markers = Marker.all
    @user_markers = markers.where(user_id: current_user)
  end

  def badge_url(user_id)
    @badge = Marker.find(user_id).category.badge_url
  end


  def marker_params
    params.require(:marker).permit(:title, :image_url, :lat, :lng, :description, :photo, :category_id, :user_id)
  end

end