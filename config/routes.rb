Rails.application.routes.draw do
  
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'dashboard#index'
  post '/contact', to: 'dashboard#contact'
  
   # namespace :admin do
   #   resources :blogs , :except => [:show]
   # end
  
  # Example of regular route:
   resources :blogs , :only => [:show] do
   		resources :comments
   end


end
