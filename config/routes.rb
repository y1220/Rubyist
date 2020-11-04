Rails.application.routes.draw do

  get 'tasks/index'
  post 'tasks/create'

  get 'pages/index'
  get 'chapters/index'
  get 'people/index'
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
