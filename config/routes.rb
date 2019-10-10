Rails.application.routes.draw do


root 'posts#index'

get 'about' => 'pages#about'

get 'me' => 'pages#me'

devise_for :users 

resources :posts do 
    resources :comments
end
# resources :comments do 
#     resources :user
# end


end
