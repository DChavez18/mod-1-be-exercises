class Centaur

    attr_reader :name, :breed, :cranky, :standing, :shoot_counter, :run_counter, :laying
    def initialize(name, breed = "Palomino", cranky = false, standing = true, laying = false)
        @name = name
        @breed = breed
        @cranky = cranky
        @standing = standing
        @shoot_counter = 0
        @run_counter = 0
        @laying = laying
    end

    def shoot
        @shoot_counter += 1
        "Twang!!!"
        if cranky = true
            return "NO!"
        else
            "Twang!!!"
        end
        
    end

    def run
        @run_counter += 1
        "Clop clop clop clop!"
    end

    def cranky?
        if run_counter + shoot_counter >= 3
            true
        else
            false
        end
            
    end

    def standing?
        standing
        if @laying = true
            false
        else
            true
        end
    end

    def sleep
        if standing = true
            "NO!"
        elsif 
            laying = true
            "Nap Time!"
        end
    end

    def lay_down
        @laying = true
    end

    def laying?
        laying

    end

end