class AddUserIdToProcedures < ActiveRecord::Migration[5.2]
  def change
    add_column :procedures, :procedures, :integer
  end
end
