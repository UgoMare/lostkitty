Rails.application.routes.draw do


  #index
  #show
  #new
  #create
  #update
  #delete
  #edit
  root 'pets#index'
  resources :pets, except: [:index]

end
