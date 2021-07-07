class User
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def recipes
        my_recipes.map { |r| r.recipe }
    end

    def add_recipe_card(rating, recipe, date)
        RecipeCard.new(rating, self, recipe, date)
    end

    def my_recipes
        RecipeCard.all.select { |card| card.user == self }
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        Allergy.all.select { |a| a if a.user == self }.map { |a| a.ingredient }
    end

    def top_three_recipies
        my_recipes.sort_by { |card| card.rating }.reverse.first(3).map { |r| r.recipe }
    end

    def most_recent_recipe
        recipes.last
    end

    def safe_recipes
        Recipe.all.reject do |r|
            r.ingredients.any? { |i| allergens.include?(i)}
        end
    end
end