Rails.application.routes.draw do
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
  get 'chapters/p1_c1'
  get 'chapters/p1_c2'
  get 'chapters/p1_c3'
  get 'chapters/p1_c4'
  get 'chapters/p1_c5'
  get 'chapters/p1_c6'
  get 'chapters/p1_c7'

  get 'chapters/p2_c8'
  get 'chapters/p2_c9'
  get 'chapters/p2_c10'
  get 'chapters/p2_c11'
  get 'chapters/p2_c12'


  get 'chapters/p3_c13'
  get 'chapters/p3_c14'
  get 'chapters/p3_c15'
  get 'chapters/p3_c16'

  get 'pages/c1_p1'
  get 'pages/c1_p2'
  get 'pages/c1_p3'

  get '/' => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
