require 'spec_helper'

describe StepIngredient do

  it 'has a valid factory' do
    FactoryGirl.create(:step_ingredient).should be_valid
  end

  it 'is invalid without a step_id' do
     FactoryGirl.build(:step_ingredient, step_id: nil).should_not be_valid
   end

  it 'is invalid without an ingredient_id' do
    FactoryGirl.build(:step_ingredient, ingredient_id: nil).should_not be_valid
  end

  it { should belong_to(:step) }
  it { should belong_to(:ingredient) }

end