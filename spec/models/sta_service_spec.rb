require 'spec_helper'

describe StaService do
  before(:each) do
    @sta_object = StaService.new
  end
  it 'should be an instance of StaService' do
    @sta_object.should be_an_instance_of StaService
  end
  it { should have_many(:operation_services) }
end
