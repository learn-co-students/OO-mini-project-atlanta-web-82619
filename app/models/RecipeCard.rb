require "pry"
require "date"
class RecipeCard

    #RecipeCard is the join between a user instance and a recipe instance. 
    #This is a has-many-through relationship. 

    attr_accessor :recipe, :rating, :date
    attr_reader :user

    @@all = []

    def initialize(user, recipe, rating, date = Date.today)
        @user = user
        @recipe = recipe
        @rating = rating
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end
end

#binding.pry
