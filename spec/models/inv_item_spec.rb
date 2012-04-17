require 'spec_helper'

describe InvItem do
  before(:each) do
    @inv_object = InvItem.new
  end
  it 'should be an instance of InvItem' do
    @inv_object.should be_an_instance_of InvItem
  end
  it { should belong_to(:type) }
  it { should belong_to(:owner) }
  it { should belong_to(:location) }
  it { should belong_to(:flag) }
  it { should have_one(:unique_name) }
  it { should have_many(:items_owned) }
  it { should have_many(:items_here) }
  it { should have_one(:denormalize) }
end
