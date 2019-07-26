class Application  

    def perform
        Show.new.menu
        game = Game.new
        game.play
    end
end