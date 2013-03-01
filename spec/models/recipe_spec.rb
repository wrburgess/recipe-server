require 'spec_helper'

describe Recipe do

  it { should have_many(:steps) }

end