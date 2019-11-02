Rails.application.routes.draw do
  post "users/:id/update" => "users#update"
  
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index"=> "users#index"
  get "users/:id" => "users#show"

  # 初期画面
  root to: "posts#index"
  
  get "posts/index"
  get "posts/show"
  get "posts/new"
  get "posts/:id" => "posts#show"
  get "posts/edit"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
end
