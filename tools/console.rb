require_relative '../config/environment.rb'

user1 = User.new("Alex")
user2 = User.new("Marissa")
user3 = User.new("Tim")

recipe1 = Recipe.new("Mashed Potatoes")
recipe2 = Recipe.new("Mac and Cheese")
recipe3 = Recipe.new("Steak")

card1 = user1.add_recipe_card(5, recipe1, Date.today.to_s)
card2 = user1.add_recipe_card(3, recipe2, "2019-08-10")
card3 = user1.add_recipe_card(4, recipe3, Date.today.to_s)
card4 = user2.add_recipe_card(5, recipe3, "2019-08-30")

i1 = Ingredient.new("Potatoes")
i2 = Ingredient.new("Noodles")
i3 = Ingredient.new("Cheese")
i4 = Ingredient.new("Milk")
i5 = Ingredient.new("Butter")
i6 = Ingredient.new("Steak")

allergy1 = user1.declare_allergy("Milk")
allergy2 = user1.declare_allergy("Cheese")
allergy3 = user2.declare_allergy("Noodles")
allergy4 = user3.declare_allergy("Milk")

recipe1.add_ingredients(i1)
recipe1.add_ingredients(i4)
recipe1.add_ingredients(i5)

recipe2.add_ingredients(i2)
recipe2.add_ingredients(i3)
recipe2.add_ingredients(i4)
recipe2.add_ingredients(i5)

recipe3.add_ingredients(i6)
recipe3.add_ingredients(i5)



binding.pry