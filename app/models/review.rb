class Review < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :content, :rating, presence: true
end
