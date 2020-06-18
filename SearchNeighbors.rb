class SearchNeighbors

    def search(game:, position_x:, position_y:)
        contador = 0
        for i in (position_y - 1)..(position_y + 1)
            for j in (position_x - 1)..(position_x + 1)
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
