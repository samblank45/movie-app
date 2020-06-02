class Api::MoviesController < ApplicationController

  def get_movies_action
    @movies = Movie.all
    render 'get_movies.json.jb'
  end

  def get_movie_action
    @movie = Movie.find_by(id:3)
    render 'get_movie.json.jb'
  end

end
