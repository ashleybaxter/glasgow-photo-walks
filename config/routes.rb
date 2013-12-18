GlasgowPhotoWalks::Application.routes.draw do
  resources :photographers

  root :to => "static#index"
end
