Rails.application.routes.draw do




  if Rails.env.production?
    devise_for :users#, :controllers => { :registrations => "registrations" } 
  else
    devise_for :users
  end

  # You can have the root of your site routed with "root"
    resources :posts do
      resources :comments
    end

    root 'pages#about'

    get '/about', to: 'pages#about'
    get '/resume', to: 'pages#resume'

end
