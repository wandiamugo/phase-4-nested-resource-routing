Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    # nested resource for reviews
    resources :reviews, only: [:show, :index]
  end

  resources :reviews, only: [:show, :index, :create]

  get '/dog_houses/:dog_house_id/reviews', to: 'dog_houses#reviews_index'
  get '/dog_houses/:dog_house_id/reviews/:id', to: 'dog_houses#review'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
