GlasgowPhotoWalks::Application.routes.draw do
  devise_for :photographers
  resources :photographers

  root :to => "static#index"
end
