class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :friendBookings, dependent: :destroy

  attr_accessor :friends

  validates :start_time, :total_price, :number_of_people, presence: true
end
