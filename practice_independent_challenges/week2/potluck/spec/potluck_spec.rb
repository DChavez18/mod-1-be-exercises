require './lib/dish'
require './lib/potluck'

RSpec.describe do
    it 'exists' do
        potluck = Potluck.new("7-13-18")
        expect(potluck).to be_a(Potluck)
    end

    it 'has a date and dishes' do
        potluck = Potluck.new("7-13-18")
        expect(potluck.date).to eq("7-13-18")
        expect(potluck.dishes).to eq([])
    end

    it 'can add dishes' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    expect(potluck.dishes).to eq("Couscous Salad", :appetizer, "Cocktail Meatballs", :entre)
    end
end