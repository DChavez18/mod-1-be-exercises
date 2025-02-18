require './lib/dish'
require './lib/potluck'

RSpec.describe do
    it 'exists' do
        potluck = Potluck.new("7-13-18")
        expect(potluck).to be_a(Potluck)
    end

    it 'has attributes' do
        potluck = Potluck.new("7-13-18")
        expect(potluck.date).to eq("7-13-18")
        expect(potluck.dishes).to eq([])
    end

    it 'can add dishes' do
        potluck = Potluck.new("7-13-18")
        couscous_salad = Dish.new("Couscous Salad", :appetizer)
        cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
        potluck.add_dish(couscous_salad)
        potluck.add_dish(cocktail_meatballs)
        dishes = [couscous_salad, cocktail_meatballs]
        expect(potluck.dishes).to eq(dishes)
        expect(potluck.dishes.length).to eq(2)
    end
end