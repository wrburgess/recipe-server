class Tool < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :step_tools
end