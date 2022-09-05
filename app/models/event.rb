class Event < ApplicationRecord
  has_many :favourites, dependent: :destroy
  has_many :users, through: :bookings

  validates :name, :location, :description, :url, :price_per_person, presence: true
end
