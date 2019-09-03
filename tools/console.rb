require_relative '../config/environment.rb'
require 'date'

alex = User.new('Alex')
justyna = User.new('Justyna')
princeton = User.new('Princeton')

guac = Recipe.new('guac')
mashed_potatoes = Recipe.new('mashed potatoes')
pbj = Recipe.new('pb & j')

rc1 = RecipeCard.new(alex, guac, 'aug 2', 3)
rc2 = RecipeCard.new(princeton, mashed_potatoes, 'sept 2', 5)
rc3 = RecipeCard.new(justyna, pbj, 'sept 2', 2)
rc4 = RecipeCard.new(justyna, mashed_potatoes, 'sept 2', 2)

potato = Ingredient.new('potato')
avocado = Ingredient.new('avocado')
butter = Ingredient.new('butter')

a1 = Allergy.new(alex, butter)
a2 = Allergy.new(alex, potato)
a3 = Allergy.new(alex, avocado)
a4 = Allergy.new(princeton, potato)

binding.pry
