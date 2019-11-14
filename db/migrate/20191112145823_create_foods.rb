class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :plate_id
      # t.integer :ingredient_id

      t.timestamps
    end
  end
end
