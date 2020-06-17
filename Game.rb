class Game

    def start()
        search = SearchNeighbors.new
        game = Array.new(10)
        for i in 0..10
            row = Array(5)
            for j in 0..5
                celula = CreateCell.new(position_y: i, position_x: j, value: rand(0..1))
                row[j] = celula.value
                #search.search(position_x: celula.position_x, position_y: celula.position_y, game: game)
            end
            game[i] = row
        end

        puts "#{game}"
    end
end

require_relative 'CreateCell'
require_relative 'SearchNeighbors'
s = Game.new
s.start()