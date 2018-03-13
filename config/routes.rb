Rails.application.routes.draw do
  
  resources :accommodations do 
    collection do
      post :upload_accommodation_image
    end 
  end  
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/dashboard/user' => "dashboard#user"
  get '/dashboard/admin' => "dashboard#admin"

  resources :amenities
  
  resources :listing_types do 
    resources :listings, only: [:show, :index]
  end
  mount Ckeditor::Engine => '/ckeditor'
  resources :touristplace_categories
  resources :tourist_places do 
    collection do
      post :tourist_place_image

    end 
  end
 
  delete '/remove_tourist_place_image/:id' => "tourist_places#remove_tourist_place_image"
  delete '/remove_listing_image/:id' => "listings#remove_listing_image"
   delete '/remove_accommodation_image/:id' => "accommodations#remove_accommodation_image"

  get 'home/index'  

  root "home#index"

  namespace :admins do 
    resources :touristplace_categories
    resources :tourist_places
  end

  namespace :dashboard do 
    resources :listings do 
      collection do
        post :upload_listing_image
      end 
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
