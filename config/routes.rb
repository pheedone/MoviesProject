Rails.application.routes.draw do
  devise_for :users


  authenticated :user do
    root 'movies#index', as: :authenticated_root
  end

  root to: "pages#home"

  resources :movies, only: [:index, :show]
end
