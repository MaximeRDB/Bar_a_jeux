class AddUsersToBars < ActiveRecord::Migration[7.1]
  def change
    add_reference :bars, :user, foreign_key: true
  end
end
