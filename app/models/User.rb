require "pry"
class User

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes 
    #should return all of the recipes this user has recipe cards for
        my_cards = RecipeCard.all.select {|card| card.user == self}
        my_cards.map {|card| card.recipe}
    end

    #OR:
    #def recipes
    #    RecipeCard.all.select {|rc| rc.user == self}.map {|rc| rc.recipe}
    #end
   
    def add_recipe_card(recipe, rating, date)
        #should accept a recipe instance as an argument, as well as a date and rating, 
        #and create a new recipe card for this user and the given recipe
        RecipeCard.new(self, recipe, rating, date)  
    end

    def declare_allergy(ingredient) 
        #should accept anIngredient instance as an argument, and create 
        #a new Allergy instance for this User and the given Ingredient
        Allergy.new(self, ingredient)
    end
    
    def allergens 
        #should return all of the ingredients this user is allergic to
        Allergy.all.select {|allergy| allergy.user == self}.map {|allergen| allergen.ingredient}
    end

    def top_three_recipes
        my_rec_cards = RecipeCard.all.select {|rc| rc.user == self}
        top_3_rec_cards = my_rec_cards.max_by(3) {|rc| rc.rating }
        top_3_recipes = top_3_rec_cards.map {|rc| rc.recipe }
    end

    def most_recent_recipe 
        #should return the recipe most recently added to the user's cookbook.
        self.recipes.last
        #OR:
        #self.recipes.select {|recipe| recipe.user == self}.max_by {|recipe| recipe.date}
    end

    def safe_recipes 
        #should return all recipes that do not contain ingredients the user is allergic to
        #compare two arrays: user.allergens & recipe.ingredients
        #for each recipe, see if allergy ingredient is included in recipe ingredient
        Recipe.all.select {|r| (r.ingredients & self.allergens).empty?}
    end
end

#binding.pry