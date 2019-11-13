class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :specifics, default: nil

      t.timestamps
    end
  end
end
