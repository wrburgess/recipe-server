class Formula < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :steps  

end