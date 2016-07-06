Rails.application.routes.draw do
  resources :inventories
  devise_for :users
  root "pages#home"
  get "about" => "pages#about"
  get "search" => "pages#search"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


