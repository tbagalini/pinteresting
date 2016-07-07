Rails.application.routes.draw do
  resources :inventories
  devise_for :users, :controllers => { registrations: 'registrations' }
  

  root "pages#home"
  get "about" => "pages#about"
  get "search" => "inventories#search"
  get "import" => "pages#import"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


