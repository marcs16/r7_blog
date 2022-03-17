Rails.application.routes.draw do
  get 'users/profile'
  get '/u/:id', to: 'users#profile', as: 'user'
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords',
  }

   resources :posts do
    resources :comments
  end
  
  # Defines the root path route ("/")
  root "pages#home"
end
