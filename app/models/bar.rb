class Bar < ApplicationRecord
  has_many :games, through: :bar_games
  has_many :bar_games
  validates :name, :address, :description, :phone_number, presence: true
end
