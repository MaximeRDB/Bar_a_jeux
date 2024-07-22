class AddColumnToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :name, :string
    add_column :games, :label, :string
    add_column :games, :description, :string
    add_column :games, :game_time, :string
    add_column :games, :available, :boolean
    add_column :games, :numbre_of_players, :integer
    add_column :games, :minimum_players, :integer
    add_column :games, :maximum_players, :integer
    add_column :games, :rentale_price_cents, :integer
  end
end
