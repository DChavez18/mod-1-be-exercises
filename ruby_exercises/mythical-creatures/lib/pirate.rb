class Pirate

attr_reader :name, :job, :cursed, :heinous_act, :booty
def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = false
    @heinous_act = 0
    @booty = 0

end

def scallywag?
    return true if job == "Scallywag"
    false
end


def cursed?
    return true if heinous_act == 3
    false
end

def commit_heinous_act
    @heinous_act += 1
    @cursed = true if heinous_act == 3
end

def rob_ship
    @booty += 100
end


end