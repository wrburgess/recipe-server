require 'spec_helper'

describe Step do

  it 'has a valid factory' do
    FactoryGirl.create(:step).should be_valid
  end

  it { should belong_to(:recipe) }

end