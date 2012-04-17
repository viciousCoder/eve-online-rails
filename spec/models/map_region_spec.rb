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
end
