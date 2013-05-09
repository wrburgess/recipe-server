require 'spec_helper'

describe Tool do

  it 'has a valid factory' do
    FactoryGirl.create(:tool).should be_valid
  end

  it { should have_many(:step_tools) }

end