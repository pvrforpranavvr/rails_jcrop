Rails.application.routes.draw do
  root :to => "avatar_uploaders#index"
  get 'index' => "avatar_uploaders#index"
  post 'new' => "avatar_uploaders#new"
  get 'next' => "avatar_uploaders#next"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
