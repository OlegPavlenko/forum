Rails.application.routes.draw do
  resources :hats do
    resources :posts
  end

  root 'hats#index'
end
