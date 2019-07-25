class Show

    def menu
        puts "-"*30
        puts "Bienvenue dans mon morpion"
        puts ""
        puts "le joueur X va ce battre contre le joueur O"
        puts ""
        puts "logique du jeu choisie un chiffre entre : "
        puts " O | 1 | 2"
        puts " 3 | 4 | 5"
        puts " 6 | 7 | 8"
        puts ""
        print "press any key to continue"
        gets.chomp
        puts ""
        puts "-"*30
    end

    def winner(hero)
        puts "Bravo #{hero} tu a gagnee"
    end

    def replay
        puts "voulez vous rejouer ? o/n"
        print "> "
        input = gets.chomp
        true if input == "o"
    end
end