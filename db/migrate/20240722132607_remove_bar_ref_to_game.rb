class RemoveBarRefToGame < ActiveRecord::Migration[7.1]
  def change
    remove_reference :games, :bar
  end
end
