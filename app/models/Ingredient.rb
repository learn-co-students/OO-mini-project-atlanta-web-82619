require "pry"
class Ingredient

    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.most_common_allergen 
        #should return the ingredient instance that the highest number of users are allergic to
        allergens = Allergy.all.map {|allergy| allergy.ingredient}
        allergens.max_by {|allergen| allergens.count(allergen)} #sort allergens by allergen count
    end
end


#allergens = ["peanuts", "shrimp", "tree nuts", "shrimp", "eggs", "dairy", "eggs", "peanuts"]
#puts allergens.count("peanuts")
#puts allergens.max_by {|allergen| allergens.count(allergen)}

#binding.pry
