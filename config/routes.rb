Rails.application.routes.draw do
  root 'tops#top'
  devise_for :users
  resources :routines
end
