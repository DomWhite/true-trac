class DropUserMarkersTable < ActiveRecord::Migration
  def change
    drop_table :user_markers
  end
end
