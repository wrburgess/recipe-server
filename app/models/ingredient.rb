class Ingredient < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :step_ingredients
end