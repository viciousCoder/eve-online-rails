require 'spec_helper'

describe PlanetSchematicsTypeMap do
  before(:each) do
    @planet_object = PlanetSchematicsTypeMap.new
  end
  it 'should be an instance of PlanetSchematicsTypeMap' do
    @planet_object.should be_an_instance_of PlanetSchematicsTypeMap
  end
  it { should belong_to(:schematic) }
  it { should belong_to(:type) }
end
