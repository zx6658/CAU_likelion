Rails.application.routes.draw do
  #resources :posts
  # home 관련 route
  get 'home/index'
  get '/contact'=> 'home#contact'

  #post 관련 route
  get 'team/:teamid/posts' => 'posts#index', as: 'posts'
  post 'team/:teamid/posts' => 'posts#create'
  get 'team/:teamid/posts/new' => 'posts#new', as: 'new_post'
  get 'team/:teamid/posts/:id/edit' => 'posts#edit', as: 'edit_post'
  get 'team/:teamid/posts/:id' => 'posts#show', as: 'post'
  patch 'team/:teamid/posts/:id' => 'posts#update'
  delete 'team/:teamid/posts/:id' => 'posts#destroy', as: 'destroy'

  # user 관련 route
  get 'user/index'

  # 팀관련 route
  get 'teams/:teamid' => 'team#index'

  #root 연결
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
