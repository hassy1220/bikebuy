Rails.application.routes.draw do
  root to: "homes#top"
  get 'homes/about',as:"about"
  resources:posts,only:[:new, :create, :index]
  resources:users,only:[:show]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
