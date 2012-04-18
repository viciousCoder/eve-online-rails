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
  it { should have_many(:items) }
  it { should have_many(:landmarks) }
  it { should have_many(:jumps) }
  # it { should have_and_belong_to_many(:adjacent_solar_systems) }
  it { should have_one(:denormalize) }
  it { should belong_to(:region) }
  it { should belong_to(:constellation) }
  it { should belong_to(:faction) }
  it { should belong_to(:sun_type) }
end
