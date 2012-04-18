require 'spec_helper'

describe MapSolarSystemJump do
  before(:each) do
    @map_object = MapSolarSystemJump.new
  end
  it 'should be an instance of MapSolarSystemJump' do
    @map_object.should be_an_instance_of MapSolarSystemJump
  end
  it { should belong_to(:from_region) }
  it { should belong_to(:to_region) }
  it { should belong_to(:from_solar_system) }
  it { should belong_to(:to_solar_system) }
  it { should belong_to(:from_constellation) }
  it { should belong_to(:to_constellation) }  
end
