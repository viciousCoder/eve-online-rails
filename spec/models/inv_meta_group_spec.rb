require 'spec_helper'

describe InvMetaGroup do
  before(:each) do
    @inv_object = InvMetaGroup.new
  end
  it 'should be an instance of InvMetaGroup' do
    @inv_object.should be_an_instance_of InvMetaGroup
  end
end
