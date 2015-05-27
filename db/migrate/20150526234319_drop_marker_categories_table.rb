class DropMarkerCategoriesTable < ActiveRecord::Migration
  def change
    drop_table :marker_categories
  end
end
