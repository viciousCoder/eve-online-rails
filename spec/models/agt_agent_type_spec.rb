require 'spec_helper'

describe AgtAgentType do
  before(:each) do
    @agt_object = AgtAgentType.new
  end
  it 'should be an instance of AgtAgentType' do
    @agt_object.should be_an_instance_of AgtAgentType
  end
  it { should have_many(:agents) }
end
