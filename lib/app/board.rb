class Board
    attr_accessor :board, :turn

    def initialize
        bc_1 = BoardCase.new(1, "0")
        bc_2 = BoardCase.new(2, "1")
        bc_3 = BoardCase.new(3, "2")
        bc_4 = BoardCase.new(4, "3")
        bc_5 = BoardCase.new(5, "4")
        bc_6 = BoardCase.new(6, "5")
        bc_7 = BoardCase.new(7, "6")
        bc_8 = BoardCase.new(8, "7")
        bc_9 = BoardCase.new(9, "8")
        @cases = [bc_1, bc_2, bc_3, bc_4, bc_5, bc_6, bc_7, bc_8, bc_9]
    end

    def show_board
        puts " #{@cases[0].value} | #{@cases[1].value} | #{@cases[2].value}"
        puts " #{@cases[3].value} | #{@cases[4].value} | #{@cases[5].value}"
        puts " #{@cases[6].value} | #{@cases[7].value} | #{@cases[8].value}"
    end

    def case_change(location, symbol)
        if case_can_be_change(location)
            @cases[location].value = symbol
        else
            return false
        end
    end

    def victory?
        if test_victory(0, 1, 2)
            return true 
        elsif test_victory(3, 4, 5)
            return true 
        elsif test_victory(6, 7, 8)
            return true 
        elsif test_victory(0, 3, 6)
            return true 
        elsif test_victory(1, 4, 7)
            return true 
        elsif test_victory(2, 5, 8)
            return true 
        elsif test_victory(0, 4, 8)
            return true 
        elsif test_victory(2, 4, 6)
            return true
        end
    end

    private

    def case_can_be_change(location)
        true if @cases[location].value == location
    end

    def test_victory(a, b, c)
        @cases[a].value == @cases[b].value && @cases[b].value == @cases[c].value
    end
end

