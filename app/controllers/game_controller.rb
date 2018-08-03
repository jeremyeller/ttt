class GameController < ApplicationController
    def index
        @games = Game.all
    end
    def new
        @game = Game.create
    end
end