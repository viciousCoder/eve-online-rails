require 'spec_helper'

describe AgtResearchAgent do
  before(:each) do
    @agt_object = AgtResearchAgent.new
  end
  it 'should be an instance of AgtResearchAgent' do
    @agt_object.should be_an_instance_of AgtResearchAgent
  end
  it { should belong_to(:agent) }
  it { should belong_to(:item) }
end
