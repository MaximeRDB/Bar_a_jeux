class CreateBars < ActiveRecord::Migration[7.1]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :phone_number
      t.integer :number_of_tables
      t.integer :number_of_seats

      t.timestamps
    end
  end
end
