class AddLongitudeToMarkers < ActiveRecord::Migration
  def change
    add_column :markers, :lng, :float, :precision => 10, :scale => 6
  end
end
