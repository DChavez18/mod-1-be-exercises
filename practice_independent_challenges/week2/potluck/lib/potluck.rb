class Potluck
    attr_reader :date, :dishes
    def initialize(date = "7-13-18")
        @date = date
        @dishes = []
    end

    def add_dish(name, category)
        dish = Dish.new(name, :category)
        @dishes << dish
    end
end