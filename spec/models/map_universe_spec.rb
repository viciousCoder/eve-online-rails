require 'spec_helper'

describe MapUniverse do
  before(:each) do
    @map_object = MapUniverse.new
  end
  it 'should be an instance of MapUniverse' do
    @map_object.should be_an_instance_of MapUniverse
  end
end
