class AddUserRefToBookings < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookings, :game, null: false, foreign_key: true
    add_reference :bookings, :user, null: false, foreign_key: true
  end
end
