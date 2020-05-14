Rails.application.routes.draw do
  root 'tops#top'
  devise_for :users
  resources :routines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
