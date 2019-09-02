class RecipeCard
  attr_reader :user, :recipe
  attr_accessor :rating, :date

  @@all = []
  def initialize(user, recipe, rating)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = Date.today
    @@all << self
  end

  def date
    @date
  end

  def self.all
    @@all
  end
end