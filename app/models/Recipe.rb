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
        self.all.max_by { |r| RecipeCard.all.select { |c| c.recipe == r }.count }
    end

    def add_ingredients(ingredient)
        RecipeIngredient.new(self, ingredient)
    end

    def users
        RecipeCard.all.select { |recipe| recipe.user if recipe.recipe == self }.map { |c| c.user }
    end

    def ingredients
        RecipeIngredient.all.select { |recipe| recipe.ingredient if recipe.recipe == self }.map { |i| i.ingredient }.map { |i| i.name }
    end

    def allergens
        allergens = Allergy.all.map { |i| i.ingredient }
        self.ingredients & allergens
    end
end