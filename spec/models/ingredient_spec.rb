require 'spec_helper'

describe Ingredient do

  it 'has a valid factory' do
    expect(build(:ingredient)).to be_valid
  end

  it { should have_many(:step_ingredients) }

end