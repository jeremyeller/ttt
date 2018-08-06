class PlayGame
    def initialize
        @game = Game.create!
        @board = Board.create!(game_id: @game.id)
        @spaces = GameBoard.new([ [Space.create!(board_id: @board.id, number: 1), Space.create!(board_id: @board.id, number: 2), Space.create!(board_id: @board.id, number: 3)], [Space.create!(board_id: @board.id, number: 4), Space.create!(board_id: @board.id, number: 5), Space.create!(board_id: @board.id, number: 6)], [Space.create!(board_id: @board.id, number: 7), Space.create!(board_id: @board.id, number: 8), Space.create!(board_id: @board.id, number: 9)] ])
    end
end