class Game < ApplicationRecord
    has_one :board
end

class Board < ApplicationRecord
    belongs_to :game
    has_many :spaces
end

class Spaces < ApplicationRecord
    belongs_to :board
end

# first
class CreateGames < ActiveRecord::Migration[5.2]
    def change
      create_table :games do |t|
  
        t.timestamps
      end
    end
end
  
# second migration
class CreateBoard < ActiveRecord::Migration[5.2]
    def change
      create_table :boards do |t|
        t.references :game
        t.timestamps
      end
    end
end

# second migration
class CreateSpaces< ActiveRecord::Migration[5.2]
    def change
      create_table :spaces do |t|
        # field for position
        # field for current value
        t.references :board
        t.timestamps
      end
    end
end


class Game

    def initialize
        spaces = [[Tile.new, Tile.new, Tile.new], [Tile.new, Tile.new, Tile.new], [Tile.new, Tile.new, Tile.new]]
        @game_board = Board.new(spaces)
        @turn_counter = Counter.new
    end

    def output
        @game_board.output
    end

    def turn_count
        "Turn #{@turn_counter.num}"
    end

    def turn
        loop do
            puts @game_board.output
            puts "Turn #{@turn_counter.num}"
            input = gets.chomp.to_i
            if @game_board.position(input) != nil
                if @game_board.position(input).value == 0
                    if @turn_counter.num.odd?
                        @game_board.position(input).set_value(1)
                    else
                        @game_board.position(input).set_value(2)
                    end
                    @turn_counter.add
                    if @game_board.check_complete
                        puts 'YAY THE GAME IS OVER'
                        puts @game_board.output
                        exit
                    else
                        next
                    end
                    break
                else
                    puts 'Type the number of an empty space please'
                end
            else
                puts 'Type a whole number between 1 and 9 please'
            end
        end
    end
end