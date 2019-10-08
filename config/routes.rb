Rails.application.routes.draw do


root 'posts#index'

get 'about' => 'pages#about'
resources :posts do 
    resources :comments
end

devise_for :users do
    get '/sign_out' => 'devise/sessions#destroy'
    get '/log_in' => 'devise/sessions#new'
    get '/log_out' => 'devise/sessions#destroy'
    get '/sign_up' => 'devise/registrations#new'
    get '/edit_profile' => 'devise/registrations#edit'
 end

end
