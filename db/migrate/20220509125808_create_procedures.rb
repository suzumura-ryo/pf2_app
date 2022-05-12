class CreateProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :procedures do |t|
      t.string :image
      t.text :content
      t.integer :recipe_id

      t.timestamps
    end
  end
end
