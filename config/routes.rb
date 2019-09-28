Rails.application.routes.draw do

  # 初期画面
  root to: 'posts#index'
  
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
