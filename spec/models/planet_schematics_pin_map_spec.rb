require 'spec_helper'

describe PlanetSchematicsPinMap do
  before(:each) do
    @planet_object = PlanetSchematicsPinMap.new
  end
  it 'should be an instance of PlanetSchematicsPinMap' do
    @planet_object.should be_an_instance_of PlanetSchematicsPinMap
  end
  it { should belong_to(:schematic) }
  it { should belong_to(:type) }
end
