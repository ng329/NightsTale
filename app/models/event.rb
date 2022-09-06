class Event < ApplicationRecord
  TAGS = ["Food & Drink", "Escape Room", "Adventure", "Outdoor", "Theatre", "Cinema", "Gaming"]

  has_many :favourites, dependent: :destroy
  has_many :users, through: :bookings
  has_many_attached :photos

  geocoded_by :location

  validates :name, :location, :tags, :description, :url, :price_per_person, presence: true
  validates :tags, inclusion: { in: TAGS }

  after_validation :geocode, if: :will_save_change_to_address?
end
