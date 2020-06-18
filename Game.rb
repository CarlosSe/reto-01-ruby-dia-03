require_relative "GenerateBoard"
require_relative "SearchNeighbors"
require_relative "PrintGame"

class Game

    def start
        board = GenerateBoard.new
        search = SearchNeighbors.new
        printer = PrintGame.new
        size = 25
        game = board.generate(size: size)
        puts "#{game}"
        while true
            system("clear") || system("cls")
            for i in 0..size
                for j in 0..size
                    contador = search.search(game: game, position_x: j, position_y: i)
                    if contador <= 1 || contador >= 4
                        game[i][j] = 0
                    end
                    if contador == 3
                        game[i][j] = 1
                    end
                end
            end
            printer.printGame(game: game)
            sleep(1)
        end
    end
end

s = Game.new
s.start
