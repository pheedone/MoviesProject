Rails.application.routes.draw do
  devise_for :users


  authenticated :user do
    root 'my_movies#index', as: :authenticated_root
  end

  root to: "pages#home"

  resources :my_movies, only: [:index, :show]
end
