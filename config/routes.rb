Rails.application.routes.draw do
  root 'application#hello'
   get '/signin' => 'sessions#new'
   post '/signin' => 'sessions#create'
   delete '/signout' => 'sessions#destroy'

   resources :users
   resources :books
   resources :user_books, only: [:new, :create]

end
