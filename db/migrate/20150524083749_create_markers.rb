class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :title, :null => false
      t.decimal :latitude, :null => false
      t.decimal :longitude, :null => false
      t.string :description
      t.string :image_url
      t.string :photo

      t.timestamps null: false
    end
  end
end
