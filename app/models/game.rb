class Game < ApplicationRecord
  has_many :bars, through: :bar_games
  has_many :bar_games
end
