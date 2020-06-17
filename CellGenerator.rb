require_relative "Cell"

class CellGenerator

    def generate(size:)
        board = Array(size)
        for i in 0..size
            row = Array(size)
            for j in 0..size
                cell = Cell.new(position_y: i, position_x: j, value: rand(0..1))
                row[j] = cell.value
            end
            board[i] = row
        end
        return board
    end
end