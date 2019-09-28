Rails.application.routes.draw do

  # 初期画面
  root to: 'posts#index'
  
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get "posts/:id" => "posts#show"
  get 'posts/edit'
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
