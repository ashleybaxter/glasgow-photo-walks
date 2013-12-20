GlasgowPhotoWalks::Application.routes.draw do
  devise_for :photographers
  resources :photographers, :walks

  root :to => "static#index"
end
