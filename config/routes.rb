Rails.application.routes.draw do
  
  namespace :api do
    get "/get_actors_url" => "actors#first_actor_action"
    get "/get_movies_url" => "movies#get_movies_action"
    get "/get_movie_url" => "movies#get_movie_action"
  end
  
end 
