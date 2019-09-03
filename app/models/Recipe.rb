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
        all.max_by do |recipe|
            recipe.users.count
        end 
    end 

    def users 
        RecipeCard.all.select {|card| card.recipe == self}.map {|card| card.user}
    end 

    def allergens 
        users.map do |user|
            user.allergens
        end.flatten
    end 

    


end 