Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  resources :books do
    collection do
      get :my_titles
    end
    member do
      get :edit
    end
  end
end
