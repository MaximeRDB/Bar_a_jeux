class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :Booking
  has_many :bar
  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
end
