require_relative '../config/environment.rb'

#Users - User.new(name)
#puts "User instances go here:"
pam = User.new("Pam")
p pam.name
jim = User.new("Jim")
andy = User.new("Andy")
michael = User.new("Michael")
angela = User.new("Angela")
diego = User.new("Diego")
ina = User.new("Ina")

#Ingredients - Ingredient.new(name)
#puts "Ingredient instances go here:"
peanut = Ingredient.new("peanut")
peanut.name
p Ingredient.most_common_allergen
shrimp = Ingredient.new("shrimp")
eggs = Ingredient.new("shrimp")
soy = Ingredient.new("soy")
wheat = Ingredient.new("wheat")
corn = Ingredient.new("corn")
butter = Ingredient.new("butter")
pepper = Ingredient.new("pepper")
sugar = Ingredient.new("sugar")

#Recipes = Recipe.new(name)
#puts "Recipe instances go here:"
lemon_pepper = Recipe.new("Lemon Pepper")
apple_crisp = Recipe.new("Apple Crisp")
pbj = Recipe.new("Peanut butter and jelly sandwich")
shrimp_ling = Recipe.new("Shrimp linguine")

#Allergies - Allergy.new(user, ingredient)
#puts "Allergy instances go here:"
allergy1 = Allergy.new(pam, peanut)
allergy2 = Allergy.new(jim, shrimp)
allergy3 = Allergy.new(andy, soy)
allergy4 = Allergy.new(michael, wheat)
allergy5 = Allergy.new(angela, sugar)
allergy6 = Allergy.new(diego, pepper)

#RecipeCards - RecipeCard.new(user, recipe, rating, *date)
#puts "RecipeCard instances go here:"
rc1 = RecipeCard.new(jim, lemon_pepper, 5)
rc2 = RecipeCard.new(pam, apple_crisp, 4)
rc3 = RecipeCard.new(andy, pbj, 5)
rc4 = RecipeCard.new(angela, shrimp_ling, 3)

#RecipeIngredients - RecipeIngredient.new(recipe, ingredient)
#puts "RecipeIngredient instances go here:"
ri1 = RecipeIngredient.new(lemon_pepper, pepper)
ri2 = RecipeIngredient.new(apple_crisp, butter)
ri3 = RecipeIngredient.new(pbj, peanut)
ri4 = RecipeIngredient.new(shrimp_ling, shrimp)

#test methods:
puts Allergy.all



#binding.pry
