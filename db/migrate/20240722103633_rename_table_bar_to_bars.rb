class RenameTableBarToBars < ActiveRecord::Migration[7.1]
  def change
    rename_table :bar_tables, :bars
  end
end
