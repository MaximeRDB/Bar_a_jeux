class AddBarRefToBarGames < ActiveRecord::Migration[7.1]
  def change
    add_reference :bar_games, :bar, null: false, foreign_key: true
    add_reference :bar_games, :game, null: false, foreign_key: true
  end
end
