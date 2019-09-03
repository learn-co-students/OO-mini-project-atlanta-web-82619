require "pry"

class RecipeIngredient

    #RecipeIngredient is the join between an ingredient and a recipe. 
    #This is a has-many-through relationship 

    attr_accessor :recipe, :ingredient

    @@all = []

    def initialize(recipe, ingredient)
        @recipe = recipe
        @ingredient = ingredient
        @@all << self
    end 

    def self.all
        @@all
    end
end

#binding.pry

    

