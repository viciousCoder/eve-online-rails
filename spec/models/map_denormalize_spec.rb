require 'spec_helper'

describe MapDenormalize do
  before(:each) do
    @map_object = MapDenormalize.new
  end
  it 'should be an instance of MapDenormalize' do
    @map_object.should be_an_instance_of MapDenormalize
  end
end
