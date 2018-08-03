Rails.application.routes.draw do
  #root 'tic_tac_toe#board'
  root 'game#index'
  get '/index', to: 'game#index'
  get '/new', to: 'game#new'
  get '/games', to: 'tic_tac_toe#games'
  get '/board', to: 'tic_tac_toe#board'
  resources :game
  #get '/board', to: 'tic_tac_toe#board'
  #get '/game_over', to: 'tic_tac_toe#game_over'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end 
