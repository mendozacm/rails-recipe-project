class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.integer :recipe_id
      t.integer :quantity
      t.belongs_to :recipe, foreign_key: true

      t.timestamps
    end
  end
end
