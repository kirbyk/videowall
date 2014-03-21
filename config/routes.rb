Videowall::Application.routes.draw do 
  resources :configurations

  resources :panel_datas
  resources :panels
  root 'panels#wall'
  get 'panels/:id/data', to: 'panels#data'
end
