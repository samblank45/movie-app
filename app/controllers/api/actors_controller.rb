class Api::ActorsController < ApplicationController
  
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @actors = Actor.all
    if params[:sort_age]
      @actors = @actors.all.order(age: :desc)
    end
    
    render 'index.json.jb'
  end
  
  def show
    @actor = Actor.find_by(id: params[:id])
    render 'show.json.jb'
  end
  
  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id]
    )
    if @actor.save
      render 'show.json.jb'
    else  
      render json: {error: @actor.errors.full_messages}
    end
  end
  
  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.plot
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age
    @actor.movie_id = params[:movie_id] || @actor.movie_id
    if @actor.save
      render 'show.json.jb'
    else  
      render json: {error: @actor.errors.full_messages}
    end
  end
  
  def destroy
    @actor = Actor.find_by(id: params[:id])
    @actor.destroy
    render json: {message: "actor successfully destroyed"}
  end

end
