class Step < ActiveRecord::Base
  attr_accessible :name, :description, :weight

  belongs_to :formula
end