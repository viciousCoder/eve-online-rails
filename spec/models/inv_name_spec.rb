require 'spec_helper'

describe InvName do
  before(:each) do
    @inv_object = InvName.new
  end
  it 'should be an instance of InvName' do
    @inv_object.should be_an_instance_of InvName
  end
end
