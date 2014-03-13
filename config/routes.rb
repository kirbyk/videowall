Videowall::Application.routes.draw do 
  resources :panels
  root 'panels#wall'
end
