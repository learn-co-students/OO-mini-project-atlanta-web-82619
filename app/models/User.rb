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

    def recipe_cards
        RecipeCard.all.select {|card| card.user == self}
    end 

    def recipes 
        recipe_cards.map {|card| card.recipe}
        # RecipeCard.all.select {|card| card.user == self}.map {|card| card.recipe}
    end 

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end 

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end 

    def allergens
        Allergy.all.select {|allergy| allergy.user == self}.map {|allergy| allergy.ingredient}

        # ingredients = []

        # Allergy.all.each do |allergy|
        #     if allergy.user == self 
        #         ingredients << allergy.ingredient
        #     end 
        # end 

        # ingredients
    end 





end 