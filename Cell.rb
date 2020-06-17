class Cell

    attr_reader :position_y, :position_x
    attr_accessor :value

    def initialize(position_y:, position_x:, value:)
        @position_y = position_y
        @position_x = position_x
        @value = value
    end
end