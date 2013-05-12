require 'spec_helper'

describe StepTool do

  it 'has a valid factory' do
    step_tool = FactoryGirl.create(:step_tool)
    expect(step_tool).to be_valid
  end

  it 'is invalid without a step_id' do
     step_tool = FactoryGirl.build(:step_tool, step_id: nil)
     expect(step_tool).to be_invalid
   end

  it 'is invalid without an tool_id' do
    step_tool = FactoryGirl.build(:step_tool, tool_id: nil)
    expect(step_tool).to be_invalid
  end

  it { should belong_to(:step) }
  it { should belong_to(:tool) }

end