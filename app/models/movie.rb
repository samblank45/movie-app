class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, numericality: {less_than: 2021}
  validates :year, numericality: {greater_than: 1900}
  validates :plot, length: {maximum: 500}

  has_many :actors

  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres.map {|genre| genre.name}
  end
end
