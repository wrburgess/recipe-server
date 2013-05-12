require 'spec_helper'

describe Step do

  it 'has a valid factory' do
    expect(FactoryGirl.build(:step)).to be_valid
  end

  it { should belong_to(:recipe) }
  it { should have_many(:ingredients) }
  it { should have_many(:tools) }

end