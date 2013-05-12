require 'spec_helper'

describe StepIngredient do

  it 'has a valid factory' do
    expect(FactoryGirl.build(:step_ingredient)).to be_valid
  end

  it 'is invalid without a step_id' do
    expect(FactoryGirl.build(:step_ingredient, step_id: nil)).to be_invalid
  end

  it 'is invalid without an ingredient_id' do
    expect(FactoryGirl.build(:step_ingredient, ingredient_id: nil)).to be_invalid
  end

  it { should belong_to(:step) }
  it { should belong_to(:ingredient) }

end