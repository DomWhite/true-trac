class ChangeColumnMarkers < ActiveRecord::Migration
 def change
    change_column :markers, :latitude, :decimal, :precision => 16, :scale => 13
    change_column :markers, :longitude, :decimal, :precision => 16, :scale => 13
  end
end
