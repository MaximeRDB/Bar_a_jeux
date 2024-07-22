class Booking < ApplicationRecord
  belongs_to :bar_game
  belongs_to :user

end
