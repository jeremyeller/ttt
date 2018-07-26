Rails.application.routes.draw do
  root 'tic_tac_toe#play'
  get 'tic_tac_toe/play'
  get 'tic_tac_toe/game_over'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
