class ChangeColumnNullGames < ActiveRecord::Migration[7.1]
  def change
    change_column_null :games, :name, false
  end
end
