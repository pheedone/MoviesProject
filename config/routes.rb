Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  authenticated :user do
    root 'movies#index', as: :authenticated_root
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies
end
