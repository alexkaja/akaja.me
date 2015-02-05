Rails.application.routes.draw do

  # You can have the root of your site routed with "root"
    resources :posts
    root 'posts#index'

end
