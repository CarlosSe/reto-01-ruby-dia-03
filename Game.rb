require_relative 'CellGenerator'
require_relative 'SearchNeighbors'
require_relative 'PrintCells'

class Game
    
    def start
        contador = 0
        search = SearchNeighbors.new
        game = CellGenerator.new
        printGame = PrintCells.new
        size = 6
        game = game.generate(size: size)
        
        puts "#{game}"

        while true
            system("clear") || system("cls")
            for i in 0..size
                for j in 0..size
                    neighbors = search.search(game: game, index_y: i, index_x: j)
                    if neighbors <= 1 || neighbors >= 4
                        game[i][j] = 0
                    elsif neighbors == 3
                        game[i][j] = 1
                    end
                end
            end
            printGame.printGame(game: game)
            contador += 1
            sleep(6)
        end
    end
end

s = Game.new
s.start()