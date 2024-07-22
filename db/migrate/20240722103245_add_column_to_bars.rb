class AddColumnToBars < ActiveRecord::Migration[7.1]
  def change
    add_column :bar_tables, :name, :string
    add_column :bar_tables, :address, :string
    add_column :bar_tables, :description, :string
    add_column :bar_tables, :phone_number, :string
    add_column :bar_tables, :number_of_tables, :integer
    add_column :bar_tables, :number_of_seats, :integer
  end
end
