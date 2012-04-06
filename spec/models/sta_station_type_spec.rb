require 'spec_helper'

describe StaStationType do
  before(:each) do
    @sta_object = StaStationType.new
  end
  it 'should be an instance of StaStationType' do
    @sta_object.should be_an_instance_of StaStationType
  end
end
