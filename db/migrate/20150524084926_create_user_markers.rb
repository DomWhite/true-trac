class CreateUserMarkers < ActiveRecord::Migration
  def change
    create_table :user_markers do |t|
      t.integer :user_id
      t.integer :marker_id

      t.timestamps null: false
    end
  end
end
