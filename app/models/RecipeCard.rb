require 'date'
class RecipeCard
    attr_reader :date, :rating, :user, :recipe
    @@all = []

    def initialize(rating, user, recipe, date = Date.today.to_s)
        @date = date
        @rating = rating
        @user = user
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all
    end
end


    #the join between a user and a recipe