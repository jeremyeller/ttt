Rails.application.routes.draw do


  root 'tic_tac_toe#board'


  # revert to using defaults
  # get '/board', to: 'tic_tac_toe#board'
  # get '/game_over', to: 'tic_tac_toe#game_over'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'games#index'
  resources :game

  # Create a game controller 
  # Have your landing page give the option to start a new game
  # when you game#new -> game model should create a new game record for you. 
  # then redirect to that url... you will end up on something like
  # game/12345

  # game = Game.new
  # redirect_to game_path(game), notice: 'Let''s start playing!' 

  # game with a table name of games
  # use the 

end 
