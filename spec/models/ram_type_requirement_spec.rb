require 'spec_helper'

describe RamTypeRequirement do
  before(:each) do
    @ram_object = RamTypeRequirement.new
  end
  it 'should be an instance of RamTypeRequirement' do
    @ram_object.should be_an_instance_of RamTypeRequirement
  end
  it { should belong_to(:type) }
  it { should belong_to(:activity) }
  it { should belong_to(:required_type) }
end
