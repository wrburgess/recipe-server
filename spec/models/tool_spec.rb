require 'spec_helper'

describe Tool do

  it 'has a valid factory' do
    tool = FactoryGirl.create(:tool)
    expect(tool).to be_valid
  end

  it { should have_many(:step_tools) }

end