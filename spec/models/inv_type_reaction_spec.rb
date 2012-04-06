require 'spec_helper'

describe InvTypeReaction do
  before(:each) do
    @inv_object = InvTypeReaction.new
  end
  it 'should be an instance of InvTypeReaction' do
    @inv_object.should be_an_instance_of InvTypeReaction
  end
end
