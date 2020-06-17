class SearchNeighbors

    def search(position_x:, position_y:, game:)
        row_previous = position_x - 1
        row_next = position_x + 1
        column_previous = position_y - 1
        column_next = position_y + 1

        contador = 0
        for i in column_previous..column_next
            for j in row_previous..row_next
                if i == 0 && j == 0
                    next
                end
                if game[i][j] != 0
                    contador += 1
                end
            end
        end
    end
end