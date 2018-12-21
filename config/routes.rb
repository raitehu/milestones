Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blogs#index'
  get '/new' => 'blogs#new'
  post '/complete' => 'blogs#create'
  post '/login' => 'blogs#login'
  delete '/:id' => 'blogs#destroy'
  get '/:id/edit' => 'blogs#edit'
  patch '/:id' => 'blogs#update'
end
