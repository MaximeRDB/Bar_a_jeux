class ChangeGameRefFromBooking < ActiveRecord::Migration[7.1]
  def change
    remove_reference :bookings, :game
    add_reference :bookings, :bar_game
  end
end
