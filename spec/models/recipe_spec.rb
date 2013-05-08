require 'spec_helper'

describe Recipe do

  it 'has a valid factory' do
    FactoryGirl.create(:recipe).should be_valid
  end

  it { should have_many(:steps) }

end