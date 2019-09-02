class Recipe
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def users
    RecipeCard.all.select {|rc| rc.recipe ==self}.map { |rc| rc.user}
  end

  def ingredients
    RecipeIngredient.all.select {|ri| ri.recipe == self}.map {|ri| ri.ingredient}
  end

# DONE
  def allergens
    allergic_ingredients = Allergy.all.map {|a| a.ingredient}
    ingredients.select {|i| allergic_ingredients.include?(i)}
  end

  def add_ingredients(ingredients)
    ingredients.each {|i| RecipeIngredient.new(self, i)}
  end

  def self.all
    @@all
  end

# DONE
  def self.most_popular
    recipes = RecipeCard.all.map {|rc| rc.recipe}
    recipes.max_by {|recipe| recipes.count(recipe)}
  end
end