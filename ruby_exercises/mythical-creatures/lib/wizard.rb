class Wizard

    attr_reader :name, :bearded

    def initialize (name, bearded: true)
        @name = name
        @rested = 0
        @bearded = bearded
    end

    def bearded?
        bearded
    end

    def incantation(saying)
        "sudo " + saying
    end

    def rested?
        return false if @rested >= 3
        true
    end

    def cast
        @rested += 1
        "MAGIC MISSILE!"
    end
        



end