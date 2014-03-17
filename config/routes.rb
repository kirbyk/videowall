Videowall::Application.routes.draw do 
  resources :panel_datas

  resources :panels
  root 'panels#wall'
end
