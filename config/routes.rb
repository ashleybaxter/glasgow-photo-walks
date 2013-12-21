GlasgowPhotoWalks::Application.routes.draw do
  devise_for :photographers
  resources :photographers, :walks, :photos

  root :to => "static#index"
end
