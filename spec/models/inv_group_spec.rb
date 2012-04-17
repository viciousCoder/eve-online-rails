require 'spec_helper'

describe InvGroup do
  before(:each) do
    @inv_object = InvGroup.new
  end
  it 'should be an instance of InvGroup' do
    @inv_object.should be_an_instance_of InvGroup
  end
  it { should belong_to(:category) }
  it { should belong_to(:icon) }
  it { should have_many(:types) }
  it { should have_many(:items) }
end
