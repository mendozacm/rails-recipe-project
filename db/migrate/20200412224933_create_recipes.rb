class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :username
      t.text :description
      t.text :instructions
      t.string :ingredient
      t.string :ingredient_name
      t.integer :ingredient_amount
      
      t.integer :user_id
      t.belongs_to :user

      t.timestamps
    end
  end
end
