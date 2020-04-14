class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :username
      t.text :body
      
      t.integer :user_id
      t.belongs_to :user
      t.belongs_to :recipe

      t.timestamps
    end
  end
end
