require 'spec_helper'

describe MapConstellation do
  before(:each) do
    @map_object = MapConstellation.new
  end
  it 'should be an instance of MapConstellation' do
    @map_object.should be_an_instance_of MapConstellation
  end
end
