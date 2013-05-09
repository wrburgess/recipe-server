require 'spec_helper'

describe Ingredient do

  it 'has a valid factory' do
    FactoryGirl.create(:ingredient).should be_valid
  end

  it { should have_many(:step_ingredients) }

end