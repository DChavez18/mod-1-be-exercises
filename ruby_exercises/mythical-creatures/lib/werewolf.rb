class Werewolf

    attr_reader :name, :location, :human
    def initialize(name, human = true, wolf, location = "London")
        @name = name
        @location = location
        @human = human
        @wolf = wolf

    
    end

    def human?
        human
    end

    def wolf?
        wolf
    end

    def change!
        if @human = true
            @human = false && @wolf = true
        end
            
    end

end