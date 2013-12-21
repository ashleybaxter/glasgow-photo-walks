GlasgowPhotoWalks::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :photographers
  resources :photographers, :walks, :photos

  root :to => "static#index"
end
