require 'spec_helper'

describe MapRegionJump do
  before(:each) do
    @map_object = MapRegionJump.new
  end
  it 'should be an instance of MapRegionJump' do
    @map_object.should be_an_instance_of MapRegionJump
  end
end
