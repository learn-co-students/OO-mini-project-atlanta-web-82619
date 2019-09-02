class RecipeIngredient
    attr_reader :ingredient, :recipe
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

#the join between a recipe and an ingredient