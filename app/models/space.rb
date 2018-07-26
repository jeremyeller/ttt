class Space
    def initialize(value = 0)
      @value = value
    end
  
    def value
      @value
    end
  
    def display_value
      if @value == 0
        '-'
      elsif @value == 1
        'X'
      elsif @value == 2
        'O'
      end
    end
  
    def set_value(x_or_o)
      @value = x_or_o
    end
end