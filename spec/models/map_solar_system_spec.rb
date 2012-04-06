require 'spec_helper'

describe MapSolarSystem do
  before(:each) do
    @map_object = MapSolarSystem.new
  end
  it 'should be an instance of MapSolarSystem' do
    @map_object.should be_an_instance_of MapSolarSystem
  end
  it { should have_many(:factions) }
  it { should have_many(:corporations) }
end
