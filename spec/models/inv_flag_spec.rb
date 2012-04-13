require 'spec_helper'

describe InvFlag do
  before(:each) do
    @inv_object = InvFlag.new
  end
  it 'should be an instance of InvFlag' do
    @inv_object.should be_an_instance_of InvFlag
  end
  it { should have_many(:items) }
end
