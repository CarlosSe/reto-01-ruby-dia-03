class GenerateBoard

    def generate(size:)
        board = Array.new(size)
        for i in 0..size
            row = Array.new(size)
            for j in 0..size
                row[j] = rand(0..1)
            end
            board[i] = row
        end
        return board
    end
end
