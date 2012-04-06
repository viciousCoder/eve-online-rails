require 'spec_helper'

describe CrtCategory do
  before(:each) do
    @crt_object = CrtCategory.new
  end
  it 'should be an instance of CrtCategory' do
    @crt_object.should be_an_instance_of CrtCategory
  end
  it { should have_many(:certificates) }
end
