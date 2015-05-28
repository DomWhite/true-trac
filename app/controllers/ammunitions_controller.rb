class AmmunitionsController < ApplicationController

  def show
    ammo = Ammunition.all
    render :json => ammo.to_json
  end
  
end