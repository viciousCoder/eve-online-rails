require 'spec_helper'

describe InvPosition do
  before(:each) do
    @inv_object = InvPosition.new
  end
  it 'should be an instance of InvPosition' do
    @inv_object.should be_an_instance_of InvPosition
  end
end
