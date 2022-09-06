class Event < ApplicationRecord
  has_many :favourites, dependent: :destroy
  has_many :users, through: :bookings
  has_many_attached :photos

  geocoded_by :location

  validates :name, :location, :description, :url, :price_per_person, presence: true

  after_validation :geocode, if: :will_save_change_to_location?
end
