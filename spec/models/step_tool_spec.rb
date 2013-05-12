require 'spec_helper'

describe StepTool do

  it 'has a valid factory' do
    expect(build(:step_tool)).to be_valid
  end

  it 'is invalid without a step_id' do
    expect(build(:step_tool, step_id: nil)).to be_invalid
  end

  it 'is invalid without an tool_id' do
    expect(build(:step_tool, tool_id: nil)).to be_invalid
  end

  it { should belong_to(:step) }
  it { should belong_to(:tool) }

end