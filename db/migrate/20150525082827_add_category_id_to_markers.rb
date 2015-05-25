class AddCategoryIdToMarkers < ActiveRecord::Migration
  def change
    add_column :markers, :category_id, :integer
  end
end
