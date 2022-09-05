class Event < ApplicationRecord
  include PgSearch::Model
  has_many :favourites, dependent: :destroy
  has_many :users, through: :bookings
  has_many_attached :photos

  geocoded_by :location

  validates :name, :location, :description, :url, :price_per_person, presence: true

  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :search_tags,
                  against: %i[tags],
                  using: {
                    tsearch: { any_word: true } # <-- any word in tag list/ can have multi words
                  }
end
