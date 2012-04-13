require 'spec_helper'

describe InvMarketGroup do
  before(:each) do
    @inv_object = InvMarketGroup.new
  end
  it 'should be an instance of InvMarketGroup' do
    @inv_object.should be_an_instance_of InvMarketGroup
  end
  it { should belong_to(:parent_group) }
  it { should have_many(:market_groups) }
  it { should belong_to(:icon) }
  it { should have_many(:types) }
end
