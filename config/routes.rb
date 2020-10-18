Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do #add in /api/v1 b4 each route - localhost:3001/api/v1/.....
      resources :pets #unnested 
      resources :pet_types do
        resources :pets #cannot get access to /api/v1/pets it has to b /api/v1/pet_types/id/pets
      end 
    end
  end 
end
