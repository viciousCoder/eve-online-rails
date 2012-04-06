require 'spec_helper'

describe PlanetSchematic do
  before(:each) do
    @planet_object = PlanetSchematic.new
  end
  it 'should be an instance of PlanetSchematic' do
    @planet_object.should be_an_instance_of PlanetSchematic
  end
end
