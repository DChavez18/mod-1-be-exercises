class Direwolf

    attr_reader :name, :home, :size, :starks_to_protect
    def initialize(name, home = "Beyond the Wall", size = "Massive", starks_to_protect = 0)
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
    end

    def protects(stark)
        # if @starks_to_protect.length >= 1
        #     return
        # end

            
    
        if @home = @location
        @starks_to_protect.push(stark)
        end

    end

    

    

end

class Stark
    attr_accessor :starks_to_protect
    attr_reader :name, :location
    def initialize(name, location = "Winterfell")
        @name = name
        @location = location
        
    end

end