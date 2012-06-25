require 'spec_helper'

describe MapRegion do
  before(:each) do
    @map_object = MapRegion.new
  end
  it 'should be an instance of MapRegion' do
    @map_object.should be_an_instance_of MapRegion
  end
  it { should have_many(:constellation_jumps) }
  it { should have_many(:constellations) }
  it { should have_many(:items) }
  it { should have_many(:jumps) }
  it { should belong_to(:faction) }
  it { should have_one(:denormalize) }
  it { should have_many(:solar_systems) }
  it { should have_many(:assembly_line_stations) }
  it { should have_many(:stations) }
end
