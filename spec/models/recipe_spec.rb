require 'spec_helper'

describe Recipe do

  it 'has a valid factory' do
    recipe = FactoryGirl.create(:recipe)
    expect(recipe).to be_valid
  end

  it { should have_many(:steps) }

end