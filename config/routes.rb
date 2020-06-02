Rails.application.routes.draw do
  
  namespace :api do
    get "/get_actors_url" => "actors#first_actor_action"
    get "/get_movies_url" => "movies#get_movies_action"
    get "/get_movie_url" => "movies#get_movie_action"

    get "/single_actor" => "actors#single_actor_action"
    get "/actor_segment/:id" => "actors#actor_segment_action"
    post "actor_body_url" => "actors#actor_body_action"
  end
  
end 
