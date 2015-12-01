Rails.application.routes.draw do
  devise_for :users
  root 'checkins#index'

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      post 'checkin', to: 'checkins#checkin'
      post 'checkout', to: 'checkins#checkout'
    end
  end
end