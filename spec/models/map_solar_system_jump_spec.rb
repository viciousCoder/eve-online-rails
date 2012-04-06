require 'spec_helper'

describe MapSolarSystemJump do
  before(:each) do
    @map_object = MapSolarSystemJump.new
  end
  it 'should be an instance of MapSolarSystemJump' do
    @map_object.should be_an_instance_of MapSolarSystemJump
  end
end
