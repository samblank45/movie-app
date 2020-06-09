class Api::MoviesController < ApplicationController

def index
  @movies = Movie.all
  if params[:english]
    @movies = @movies.where(english: true)
  end
  render 'index.json.jb'
end

def show
  @movie = Movie.find_by(id: params[:id])
  render 'show.json.jb'
end

def create
  @movie = Movie.new(
    title: params[:title],
    year: params[:year],
    plot: params[:plot],
    director: params[:director],
    english: params[:english]
  )
  if @movie.save
    render 'show.json.jb'
  else  
    render json: {error: @movie.errors.full_messages}
  end
end

def update
  @movie = Movie.find_by(id: params[:id])
  @movie.title = params[:title] || @movies.title
  @movie.year = params[:year] || @movies.year
  @movie.plot = params[:plot] || @movies.plot
  @movie.director = params[:director] || @movie.director
  @movie.english = params[:english] || @movie.director
  @movie.save
  if @movie.save
    render 'show.json.jb'
  else  
    render json: {error: @movie.errors.full_messages}
  end
end

def destroy
  @movie = Movie.find_by(id: params[:id])
  @movie.destroy
  render json: {message: "movie successfully destroyed"}
end

end
