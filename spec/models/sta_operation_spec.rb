require 'spec_helper'

describe StaOperation do
  before(:each) do
    @sta_object = StaOperation.new
  end
  it 'should be an instance of StaOperation' do
    @sta_object.should be_an_instance_of StaOperation
  end
end
