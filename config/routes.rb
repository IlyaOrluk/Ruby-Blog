Rails.application.routes.draw do


  resources :room_messages
  resources :rooms
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
root controller: :rooms, action: :index
resources :room_messages
resources :rooms
end
