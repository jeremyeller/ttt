class GameController < ApplicationController
    def index
        @games = Game.all
    end
    def new
        @game = PlayGame.new
    end
end