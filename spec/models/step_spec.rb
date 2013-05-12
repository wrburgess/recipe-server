require 'spec_helper'

describe Step do

  it 'has a valid factory' do
    step = FactoryGirl.create(:step)
    expect(step).to be_valid
  end

  it { should belong_to(:recipe) }
  it { should have_many(:ingredients) }
  it { should have_many(:tools) }

end