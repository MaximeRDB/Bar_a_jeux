class CreateBarGames < ActiveRecord::Migration[7.1]
  def change
    create_table :bar_games do |t|
      t.string :name

      t.timestamps
    end
  end
end
