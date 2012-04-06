require 'spec_helper'

describe MapLocationWormholeClass do
  before(:each) do
    @map_object = MapLocationWormholeClass.new
  end
  it 'should be an instance of MapLocationWormholeClass' do
    @map_object.should be_an_instance_of MapLocationWormholeClass
  end
end
