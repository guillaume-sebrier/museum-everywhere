Rails.application.routes.draw do

  get 'reviews/show'
  get 'reviews/update'
  get 'reviews/edit'
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: "pages#dashboard"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :offers, only: %i[create new destroy edit update]
  end
  resources :offers, only: %i[index show] do
    resources :bookings, only: %i[new create destroy] do
      resources :reviews, only: %i[new create destroy]
    # resources :reviews, only: [:index, :show]
    end
  end

end
