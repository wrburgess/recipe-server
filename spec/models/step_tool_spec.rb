require 'spec_helper'

describe StepTool do

  it 'has a valid factory' do
    FactoryGirl.create(:step_tool).should be_valid
  end

  it 'is invalid without a step_id' do
     FactoryGirl.build(:step_tool, step_id: nil).should_not be_valid
   end

  it 'is invalid without an tool_id' do
    FactoryGirl.build(:step_tool, tool_id: nil).should_not be_valid
  end

  it { should belong_to(:step) }
  it { should belong_to(:tool) }

end