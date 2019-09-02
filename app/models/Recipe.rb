class Recipe

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        #should return the recipe instance with the highest 
        #number of users (the recipe that has the most recipe cards)
        recipes = RecipeCard.all.map {|card| card.recipe}
        recipes.max_by {|recipe| recipes.count(recipe)}
    end

    def users 
        #should return the user instances who have recipe cards with this recipe
        RecipeCard.all.select {|card| card.recipe == self}.map {|card| card.user}
    end
    
    def ingredients 
        #should return all of the ingredients in this recipe
        RecipeIngredient.all.select {|r_ingr| r_ingr.recipe ==  self}.map {|r_ingr| r_ingr.ingredient}
    end
    
    def allergens 
        #should return all of the Ingredients in this recipe that are allergens for Users in our system.
        allergens = Allergy.all.map {|a| a.ingredient}
        ingredients.select {|i| allergens.include?(i)}
    end

    def add_ingredients(ingredients) 
        #should take an array of ingredient instances as an argument, 
        #and associate each of those ingredients with this recipe
        self.ingredients.each {|ingredient| RecipeIngredient.new(self, ingredient)}
    end
end