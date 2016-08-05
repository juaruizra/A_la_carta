class DeleteNameToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :nombre, :string
    remove_column :users, :direccion, :string
    remove_column :users, :cargo, :boolean
    remove_column :users, :telefono, :integer
  end
end
