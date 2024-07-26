class Bar < ApplicationRecord
  has_many :games, through: :bar_games
  has_many :bar_games
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, :address, presence: true
end
