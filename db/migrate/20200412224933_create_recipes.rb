class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :username
      t.text :description
      t.text :instructions
      t.string :ingredients
      t.integer :ingredient_id
      
      t.integer :user_id
      t.belongs_to :user

      t.timestamps
    end
  end
end
