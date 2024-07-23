class AddBarcodeToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :barcode, :string
  end
end
