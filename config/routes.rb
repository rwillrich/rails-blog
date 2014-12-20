Rails.application.routes.draw do

  root 'welcome#index'

  namespace :admin do
    root 'dashboard#index'
    resources :posts
    resources :versions, only: [:revert] do
      post :revert, on: :member
    end
  end

end
