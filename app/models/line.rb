class Line
    def initialize(array)
      @array = array
    end
    def spaces
      @array
    end
    def complete?
      @array[0].value == @array[1].value && @array[0].value == @array[2].value && @array[0].value != 0
    end
end