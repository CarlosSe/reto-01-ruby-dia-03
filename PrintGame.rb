class PrintGame

    def printGame(game:)
        size = game.length - 1
        for i in 0..size
            for j in 0..size
                print "#{game[i][j]} "
            end
            print("\n")
        end
    end
end 
