require 'spec_helper'

describe InvMetaType do
  before(:each) do
    @inv_object = InvMetaType.new
  end
  it 'should be an instance of InvMetaType' do
    @inv_object.should be_an_instance_of InvMetaType
  end
end
