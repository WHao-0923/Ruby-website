Rails.application.routes.draw do
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users
  resources :friends
  #get "home/index"
  # root "home#index"
  root "friends#index"
  get "home/about"
end
