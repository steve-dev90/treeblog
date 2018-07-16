Rails.application.routes.draw do
  resources :posts
  get '/pages', to: 'pages#index'
  #This needs to go above line 5 or it will get confused with the params id
  get '/pages/new', to: 'pages#new', as: 'new_page' 
  get 'pages/:id', to: 'pages#show', as: 'page'
  get 'pages/:id/edit', to: 'pages#edit', as: 'edit_page'

  post '/pages', to: 'pages#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
