class Ingredient
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # DONE
  def self.most_common_allergen
    allergic_indgredients = Allergy.all.map {|a| a.ingredient}
    allergic_indgredients.max_by {|ai| allergic_indgredients.count(ai)}
  end
end
