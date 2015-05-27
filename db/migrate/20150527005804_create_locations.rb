class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :user_id, :null => false
      t.float :lat, :precision => 10, :scale => 6, :null => false
      t.float :lng, :precision => 10, :scale => 6, :null => false

      t.timestamps null: false
    end
  end
end
