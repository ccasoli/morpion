class Player
    attr_reader :name, :symbol

    def initialize(name, symbol)
        @name = name
        @symbol = symbol
    end

    def symbol
        symbol = @symbol
    end

    def name
        name = @name
    end
end