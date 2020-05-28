class Api::ActorsController < ApplicationController

  def first_actor_action
    @actor = Actor.find_by(id:6)
    render 'first_actor.json.jb'
  end

end
