class User
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @allergies = []
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        RecipeCard.all.select { |recipe| recipe.recipe if recipe.user == self}
    end

    def add_recipe_card(rating, recipe, date)
        RecipeCard.new(rating, self, recipe, date)
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select { |a| a.ingredient if a.user == self }
    end

    def top_three_recipies
        recipes.sort_by { |card| card.rating }.reverse.first(3)
    end

    def most_recent_recipe
        recipes.last
    end

    def safe_recipes
        #recipes without allergens - user to ingredient to recipes
    end
end