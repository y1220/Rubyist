Rails.application.routes.draw do


  get 'content_types/index'
  get 'contents/index'
  get 'contents/:box_id/new' => "contents#new"
  post 'contents/:box_id/create' => "contents#create"
  get 'contents/:content_id/edit' => "contents#edit"
  post 'contents/:content_id/update' => "contents#update"

  #get 'contents/:box_id/new'
  #get 'boxes/index'
  get 'tasks/index'
  post 'tasks/create'
  get 'tasks/todo'
  post "tasks/:id/destroy" => "tasks#destroy"

  post 'dones/:task_id/index' => "dones#index"
  post "dones/:task_id/destroy" => "dones#destroy"
  #resources :pages
  resources :boxes

  get 'pages/index'
  get 'chapters/index'

  get 'parts/index'
  get 'parts/p1'
  get 'parts/p2'
  get 'parts/p3'
  #[1..7].each{|x|
  #get "chapters/p1_c#{x}"
  #}

  get 'chapters/:first/:second'=> "chapters#show"




  get 'pages/:first/:second'=> "pages#show"
  #get 'pages/c1/p2'=> "pages#c1_p2"
  #get 'pages/c1/p3'=> "pages#c1_p3"
  #get 'pages/c1/p3_com'
  #get 'pages/c1/p1'=> "pages#c2_p1"

  get '/' => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
