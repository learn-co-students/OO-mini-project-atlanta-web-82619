require_relative '../config/environment.rb'
require "date"

andrea = User.new("Andrea")
ron = User.new("Ron")
chris = User.new("Chris")
alycia = User.new("Alycia")

angelHair = Ingredient.new("angel hair pasta")
butter = Ingredient.new("butter")
lemonJuice = Ingredient.new("lemon juice")
pepper = Ingredient.new("pepper")
chickenStock = Ingredient.new("chicken stock")
sardines = Ingredient.new("sardines")
chives = Ingredient.new("chives")
heavyCream = Ingredient.new("heavy cream")
sugar = Ingredient.new("sugar")
egg = Ingredient.new("egg")

lemonButterAngelHair = Recipe.new("Lemon Butter Angel Hair Pasta")
sardineButter = Recipe.new("Sardine Butter")
lemonPosset = Recipe.new("Lemon Posset")
lemonCurd = Recipe.new("Lemon Curd")

lemonButterAngelHair.add_ingredients([angelHair, butter, lemonJuice, pepper, chickenStock])
sardineButter.add_ingredients([butter, sardines, lemonJuice, pepper, chives])
lemonPosset.add_ingredients([heavyCream, sugar, lemonJuice])
lemonCurd.add_ingredients([egg, lemonJuice, sugar, butter])

andrea.add_recipe_card(lemonButterAngelHair, 10)
andrea.add_recipe_card(sardineButter, 2)
andrea.add_recipe_card(lemonPosset, 8)
andrea.add_recipe_card(lemonCurd, 7)

chris.add_recipe_card(lemonPosset, 10)

andrea.declare_allergy(sardines)
chris.declare_allergy(chives)
alycia.declare_allergy(chives)

RecipeCard.all[0].date -= 7
RecipeCard.all[1].date -= 3
RecipeCard.all[2].date -= 6


binding.pry
# 0