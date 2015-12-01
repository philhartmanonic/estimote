Rails.application.routes.draw do
  devise_for :users
  root 'checkins#index'
end