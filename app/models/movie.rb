class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, numericality: {less_than: 2021}
  validates :year, numericality: {greater_than: 1900}
  validates :plot, length: {maximum: 500}
end
