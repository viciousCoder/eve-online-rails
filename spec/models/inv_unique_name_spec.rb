require 'spec_helper'

describe InvUniqueName do
  before(:each) do
    @inv_object = InvUniqueName.new
  end
  it 'should be an instance of InvUniqueName' do
    @inv_object.should be_an_instance_of InvUniqueName
  end
end
