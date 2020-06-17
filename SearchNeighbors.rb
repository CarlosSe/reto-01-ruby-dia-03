class SearchNeighbors

    def search(game:, index_y:, index_x:)
        contador = 0
        for i in (index_y - 1)..(index_y + 1)
            for j in (index_x - 1)..(index_x + 1)
                if i == 0 && j == 0
                    next
                end
                if i > 0 && j < (game.length - 1) && i < (game.length - 1)
                    if game[i][j] == 1
                        contador += 1
                    end
                end
            end
        end
        return contador
    end
end