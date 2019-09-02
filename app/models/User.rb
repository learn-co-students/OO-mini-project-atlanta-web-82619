class User
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    RecipeCard.all.select {|rc| rc.user == self}.map {|rc| rc.recipe}
  end

  def add_recipe_card(recipe, rating)
    recipeCard = RecipeCard.new(self, recipe, rating)
  end

  def declare_allergy(ingredient)
    allergy = Allergy.new(self, ingredient)
  end

  def allergens
    Allergy.all.select {|allergy| allergy.user == self}.map {|a| a.ingredient}
  end

  # DONE
  #top 3 rated recipes for this user
  def top_three_recipes
    my_rcs = RecipeCard.all.select {|rc| rc.user ==self}
    top_3_rcs = my_rcs.max_by(3) {|rc| rc.rating }
    top_3_recipes = top_3_rcs.map {|rc| rc.recipe }
  end

  # DONE
  def most_recent_recipe
    my_rcs = RecipeCard.all.select {|rc| rc.user ==self}
    # dates = my_rcs.map {|rc| rc.date}
    my_rcs.max_by {|rc| rc.date}
  end

  # DONE return all recipes that don't contain ingredients the user is allergic to
  def safe_recipes
    #find my ingredients I'm allergic to
    allergens
    #compare two arrays: user.allergens & recipe.ingredients
    #for each recipe, see if allergy ingredient is included in recipe ingredient
    Recipe.all.select {|r| (r.ingredients & allergens).empty?}
  end

  def self.all
    @@all
  end
end