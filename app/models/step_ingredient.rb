class StepIngredient < ActiveRecord::Base
  attr_accessible :volume

  validates_presence_of :step_id, :ingredient_id
  
  belongs_to :step
  belongs_to :ingredient
end