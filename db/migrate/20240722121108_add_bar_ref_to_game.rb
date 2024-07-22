class AddBarRefToGame < ActiveRecord::Migration[7.1]
  def change
    add_reference :games, :bar, null: false, foreign_key: true
  end
end
