class Ogre

    attr_reader :name, :home, :swings, :encounter_counter
    def initialize(name, home = "Swamp")
        @name = name
        @home = home
        @swings = 0
        @encounter_counter = 0
    end

    def encounter(human)
        @encounter_counter += 1
        human.increment_encounters
        if human.notices_ogre?
            swing_at(human)
        end
    
    end

    def swing_at(human)
        @swings += 1
    end

    def apologize(human)
        human.reset_encounter_count
        @swings = 0
    end


end

class Human

    attr_accessor :encounter_counter
    attr_reader :name, :encounter_counter
    def initialize(name = "Jane")
        @name = name
        @encounter_counter = 0
    end

    def increment_encounters
        @encounter_counter += 1
    end

    def reset_encounter_count
        @encounter_counter = 0
    end

    def notices_ogre?
        return encounter_counter % 3 == 0

    end
    
    def knocked_out?
        return true if encounter_counter >= 3
        false
    end
end