require 'spec_helper'

describe InvControlTowerResourcePurpose do
  before(:each) do
    @inv_object = InvControlTowerResourcePurpose.new
  end
  it 'should be an instance of InvControlTowerResourcePurpose' do
    @inv_object.should be_an_instance_of InvControlTowerResourcePurpose
  end
  it { should have_many(:control_tower_resources) }
end
