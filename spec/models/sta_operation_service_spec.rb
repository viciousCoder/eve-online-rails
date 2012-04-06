require 'spec_helper'

describe StaOperationService do
  before(:each) do
    @sta_object = StaOperationService.new
  end
  it 'should be an instance of StaOperationService' do
    @sta_object.should be_an_instance_of StaOperationService
  end
end
