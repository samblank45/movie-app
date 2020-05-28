Rails.application.routes.draw do
  
  namespace :api do
    get "/get_actors" => "actors#first_actor_action"
  end
  
end 
