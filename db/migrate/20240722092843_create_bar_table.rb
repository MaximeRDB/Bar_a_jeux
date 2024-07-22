class CreateBarTable < ActiveRecord::Migration[7.1]
  def change
    create_table :bar_tables do |t|

      t.timestamps
    end
  end
end
