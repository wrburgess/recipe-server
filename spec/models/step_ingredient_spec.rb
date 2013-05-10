require 'spec_helper'

describe StepIngredient do

  it 'has a valid factory' do
    step_ingredient = FactoryGirl.create(:step_ingredient)
    expect(step_ingredient).to be_valid
  end

  it 'is invalid without a step_id' do
    step_ingredient = FactoryGirl.build(:step_ingredient, step_id: nil)
    expect(step_ingredient).to be_invalid
  end

  it 'is invalid without an ingredient_id' do
    step_ingredient = FactoryGirl.build(:step_ingredient, ingredient_id: nil)
    expect(step_ingredient).to be_invalid
  end

  it { should belong_to(:step) }
  it { should belong_to(:ingredient) }

end