class GameBoard
    def initialize(array)
      @array = array
      @column1 = Line.new([@array[0][0], @array[1][0], @array[2][0]])
      @column2 = Line.new([@array[0][1], @array[1][1], @array[2][1]])
      @column3 = Line.new([@array[0][2], @array[1][2], @array[2][2]])
  
      @row1 = Line.new([@array[0][0], @array[0][1], @array[0][2]])
      @row2 = Line.new([@array[1][0], @array[1][1], @array[1][2]])
      @row3 = Line.new([@array[2][0], @array[2][1], @array[2][2]])
  
      @diagonal1 = Line.new([@array[0][0], @array[1][1], @array[2][2]])
      @diagonal2 = Line.new([@array[0][2], @array[1][1], @array[2][0]])
      @output = "+1---+2---+3---+\n|  #{@array[0][0].value} |  #{@array[0][1].value} |  #{@array[0][2].value} |\n+4---+5---+6---+\n|  #{@array[1][0].value} |  #{@array[1][1].value} |  #{@array[1][2].value} |\n+7---+8---+9---+\n|  #{@array[2][0].value} |  #{@array[2][1].value} |  #{@array[2][2].value} |\n+----+----+----+"
    end
    def output
        @output
    end
    def check_complete
      @column1.complete? ||
      @column2.complete? ||
      @column3.complete? ||
  
      @row1.complete? ||
      @row2.complete? ||
      @row3.complete? ||
  
      @diagonal1.complete? ||
      @diagonal2.complete?
    end
    def position(num)
      case num
        when 1
          @array[0][0]
        when 2
          @array[0][1]
        when 3
          @array[0][2]
        when 4
          @array[1][0]
        when 5
          @array[1][1]
        when 6
          @array[1][2]
        when 7
          @array[2][0]
        when 8
          @array[2][1]
        when 9
          @array[2][2]
        else
          nil
        end
    end
end