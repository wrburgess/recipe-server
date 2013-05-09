class Step < ActiveRecord::Base
  attr_accessible :name, :description, :weight

  belongs_to :recipe
  has_many :step_tools
  has_many :ingredients, through: :step_ingredients
  has_many :tools, through: :step_tools
end