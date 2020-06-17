class PrintCells

    def printGame(game:)
        for i in 0..(game.length - 1)
            for j in 0..(game.length - 1)
                print "#{game[i][j]} \t"
            end
            print "\n"
        end
    end
end
