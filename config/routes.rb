Rails.application.routes.draw do
  get 'views/index'
  get 'views/new'
  get 'views/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
