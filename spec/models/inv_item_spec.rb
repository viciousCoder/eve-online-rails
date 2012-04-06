require 'spec_helper'

describe InvItem do
  before(:each) do
    @inv_object = InvItem.new
  end
  it 'should be an instance of InvItem' do
    @inv_object.should be_an_instance_of InvItem
  end
end
