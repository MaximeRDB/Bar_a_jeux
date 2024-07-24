class AddCoordinatesToBars < ActiveRecord::Migration[7.1]
  def change
    add_column :bars, :latitude, :float
    add_column :bars, :longitude, :float
  end
end
