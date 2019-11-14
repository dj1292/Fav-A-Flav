class CreatePlates < ActiveRecord::Migration[6.0]
  def change
    create_table :plates do |t|
      t.string :name 
      t.string :category
      t.integer :food_id
      t.integer :user_id
      # t.integer :restaurant_id, :default => nil

      t.timestamps
    end
  end
end
