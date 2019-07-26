class BoardCase
    attr_accessor :id, :value

    def initialize(id, value)
        @id = id
        @value = value.to_i
    end
end