require 'spec_helper'

describe Formula do

  it 'has a valid factory' do
    FactoryGirl.create(:formula).should be_valid
  end

  it { should have_many(:steps) }

end