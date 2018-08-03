class PlayGame
    def initialize
        @game = Game.create!
        @board = Board.create!(game_id: @game.id)
        @spaces = Space.create!(board_id: @board.id)
    end
end