class Event < ApplicationRecord
  include PgSearch::Model
  TAGS = ["Food & Drink", "Escape Room", "Adventure", "Outdoor", "Theatre", "Cinema", "Gaming"]

  has_many :favourites, dependent: :destroy
  has_many :users, through: :bookings
  has_many :bookings
  has_many_attached :photos
  has_many :reviews, dependent: :destroy

  geocoded_by :location

  validates :name, :location, :tags, :description, :url, :price_per_person, presence: true
  validates :tags, inclusion: { in: TAGS }

  after_validation :geocode, if: :will_save_change_to_location?

  pg_search_scope :search_tags,
                  against: %i[tags],
                  using: {
                    tsearch: { any_word: true } # <-- any word in tag list/ can have multi words
                  }
end
