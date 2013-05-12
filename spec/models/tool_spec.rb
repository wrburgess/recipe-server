require 'spec_helper'

describe Tool do

  it 'has a valid factory' do
    expect(build(:tool)).to be_valid
  end

  it { should have_many(:step_tools) }

end