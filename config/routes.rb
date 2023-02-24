Rails.application.routes.draw do

  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
 

  # get "bookmarks", to: "bookmarks#new"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
