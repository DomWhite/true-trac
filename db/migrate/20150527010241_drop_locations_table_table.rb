class DropLocationsTableTable < ActiveRecord::Migration
  def change
    drop_table :locations_tables
  end
end
