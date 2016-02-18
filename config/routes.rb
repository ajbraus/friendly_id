Rails.application.routes.draw do
  resources :posts, except: [:index] do #BLOCK
    # NESTED ROUTES
    resources :comments, only: [:create, :destroy]
  end
  
  root "posts#index"
end
