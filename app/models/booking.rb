class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :start_time, :total_price, :number_of_people, presence: true
end
