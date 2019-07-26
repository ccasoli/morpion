class Game
    attr_accessor :board, :player1, :player2, :current_player, :winner
    #on creer un plateau avec 2 joueurs 
    #current_player permet de manipuler a tour de role
    def initialize
        @board = Board.new
        @player1 = Player.new("joueur X", "x")
        @player2 = Player.new("joueur O", "o")
        @current_player = @player1
    end

    #ici on est fairplay 
    def who_first
        rand_p1 = rand(1..6)
        rand_p2 = rand(1..6)
        while rand_p1 == rand_p2
            rand_p1 = rand(1..6)
            rand_p2 = rand(1..6)
        end
        if rand_p1 > rand_p2
            puts "le joueur X va commencer "
            puts ''
            @current_player = @player1
        else
            puts "le joueur O va commancer"
            puts ''
            @current_player = @player2
        end
    end

    #changement de joueur
    def switch_player
        if @current_player == player1
            @current_player = player2
        else
            @current_player = player1
        end
        puts ''
        puts " au tour du #{@current_player.name}"
    end

    def choice_case(input_location, symbol = current_player.symbol)
        while input_location > 8 
            puts ''
            print "choisie entre 0 et 8 : "
            input_location = gets.chomp.to_i
        end
        @board.case_change(input_location, symbol)
    end

    def play
        i = 0
        who_first
        loop do
            break if i > 8
            @board.show_board
            input = gets.chomp.to_i
            choice_case(input)
            i+=1
            if @board.victory?
                puts ""
                puts "#{current_player.name} a gagne "
                break
            end
            switch_player
        end
        puts ''
        puts "partie termine"
        @boar = Board.new
        replay
    end

    def replay
        puts ''
        print "rejouer o/n : "
        input = gets.chomp
        if input == "n"
            puts "merci d avoir jouer, bye"
        else
            play
        end
    end
end