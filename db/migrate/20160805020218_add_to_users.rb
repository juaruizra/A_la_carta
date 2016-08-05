class AddToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :cargo, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :is_female, :boolean, default: false
    add_column :users, :is_admin, :boolean, default: false
  end
end
