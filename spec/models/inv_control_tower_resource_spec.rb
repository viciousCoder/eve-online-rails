require 'spec_helper'

describe InvControlTowerResource do
  before(:each) do
    @inv_object = InvControlTowerResource.new
  end
  it 'should be an instance of InvControlTowerResource' do
    @inv_object.should be_an_instance_of InvControlTowerResource
  end
end
