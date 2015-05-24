class CreateMarkerCategories < ActiveRecord::Migration
  def change
    create_table :marker_categories do |t|
      t.integer :marker_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
