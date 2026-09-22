class Review < ApplicationRecord
  belongs_to :restaurant

  RATINGS = [ 0, 1, 2, 3, 4, 5 ]
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: RATINGS, message: "Ratings must be an integer between 0 and 5" }
  validates :rating, numericality: { only_integer: true }
end
