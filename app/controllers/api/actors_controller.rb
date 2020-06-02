class Api::ActorsController < ApplicationController

  def first_actor_action
    @actor = Actor.find_by(id:6)
    render 'actor.json.jb'
  end

  def single_actor_action
    @actor = Actor.find(params[:id])
    render 'actor.json.jb'
  end

  def actor_segment_action
    @actor = Actor.find(params[:id])
    render 'actor.json.jb'
  end

  def actor_body_action
    @actor = Actor.find(params[:id])
    render 'actor.json.jb'
  end

end
