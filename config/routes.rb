PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  resources :users

  resources :sessions, only: [:new, :create]
  delete 'logout' => 'sessions#destroy'

  # put sessions resources here
  # new, create, destroy

  resources :posts, except:[:destroy] do
    resources :comments, except:[:destroy]
  end

  resources :categories, except:[:destroy]
end
