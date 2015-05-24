class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, :null => false
      t.string :badge_url

      t.timestamps null: false
    end
  end
end
