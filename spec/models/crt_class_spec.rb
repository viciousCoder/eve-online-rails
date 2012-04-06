require 'spec_helper'

describe CrtClass do
  before(:each) do
    @crt_object = CrtClass.new
  end
  it 'should be an instance of CrtClass' do
    @crt_object.should be_an_instance_of CrtClass
  end
  it { should have_many(:certificates) }
end
