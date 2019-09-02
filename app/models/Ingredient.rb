class Ingredient
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        allergies = Allergy.all.map { |a| a.ingredient }
        allergies.max_by { |a| allergies.count(a) }
    end
end
