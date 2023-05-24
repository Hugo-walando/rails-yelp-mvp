class Review < ApplicationRecord
  NUMBERS = [0,1,2,3,4,5]
  belongs_to :restaurant
  validates :content,:rating, presence: true
  validates :rating, presence: {message: "Must be 0-5"}, numericality: { only_integer: true }, inclusion: {in: 0..5}
end
