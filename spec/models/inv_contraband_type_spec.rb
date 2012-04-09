require 'spec_helper'

describe InvContrabandType do
  before(:each) do
    @inv_contraband_type = InvContrabandType.new
  end
  it 'should be an instance of InvContrabandType' do
    @inv_contraband_type.should be_an_instance_of InvContrabandType
  end
  it { should belong_to(:faction) }
  it { should belong_to(:type) }
end
