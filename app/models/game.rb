class Game < ApplicationRecord
  has_many :bar
  has_many :booking
  validates :name, presence: true
end
