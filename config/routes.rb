Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"

  resources :books do
    resources :rents, only: :create


    collection do
      get :my_titles
    end

    member do
      get :edit
    end

  end
  resources :rents, only: [:index, :destroy]
  get '/books', to: 'books#index'
end
