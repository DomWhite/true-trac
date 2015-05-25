class AddLatitudeToMarkers < ActiveRecord::Migration
  def change
    add_column :markers, :lat, :float, :precision => 10, :scale => 6
  end
end
