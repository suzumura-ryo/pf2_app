class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.boolean :publish
      t.integer :user_id

      t.timestamps
    end
    add_index :recipes, [:title, :user_id, :created_at]
  end
end
