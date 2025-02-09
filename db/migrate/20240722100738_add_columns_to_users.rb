class AddColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :email, :string
    add_column :users, :favourite_game, :string
    add_column :users, :location, :string
    add_column :users, :phone_number, :integer
  end
end
