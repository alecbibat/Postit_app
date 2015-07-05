PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  get '/register', to: 'users#new'
  post '/register', to: 'users#create'

  # put sessions resources here
  # new, create, destroy

  resources :posts, except:[:destroy] do
    resources :comments, except:[:destroy]
  end

  resources :categories, except:[:destroy]
end
