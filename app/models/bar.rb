class Bar < ApplicationRecord
  has_many :game
  has_many :Booking
  validates :name, :address, :description, :phone_number, presence: true
end
