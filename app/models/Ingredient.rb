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
        #highest # of users allergic to
    end
end
