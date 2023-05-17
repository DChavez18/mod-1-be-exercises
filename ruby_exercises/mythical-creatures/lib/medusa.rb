class Medusa
    attr_reader :name, :statues
    def initialize(name)
        @name = name
        @statues = []
    end

    def stare(victim)
        if statues.length <= 2
        @statues << victim
    #   require "pry"; binding.pry 
    victim.stoned = true
        else
            @statues.shift
            @statues << victim
    end
end

   
end

class Person
    attr_reader :name
    attr_accessor :stoned
    def initialize(name)
        @name = name
        @stoned = false
    end

    def stoned?
        stoned
    end

end