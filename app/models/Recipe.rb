class Recipe
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        #most popular recipe card - recipe to user
    end

    def add_ingredients(ingredient)
        RecipeIngredient.new(self, ingredient)
    end

    def users
        RecipeCard.all.select { |recipe| recipe.user if recipe.recipe == self }
    end

    def ingredients
        RecipeIngredient.all.select { |recipe| recipe.ingredient if recipe.recipe == self }.map { |i| i.ingredient }
    end

    def allergens
        #recipe to user; user to ingredient
    end
end