class CreateAmmunitions < ActiveRecord::Migration
  def change
    create_table :ammunitions do |t|
      t.string :name, :null => false
      t.integer :range
      t.integer :max, :null => false
    end
  end
end
