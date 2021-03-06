require 'spec_helper'

describe ChrFaction do
  before(:each) do
    @chr_object = ChrFaction.new
  end
  it 'should be an instance of ChrFaction' do
    @chr_object.should be_an_instance_of ChrFaction
  end
  it { should belong_to(:race) }
  it { should belong_to(:home_system) }
  it { should belong_to(:corporation) }
  it { should belong_to(:militia) }  
  it { should belong_to(:icon) }
  it { should have_many(:corporations) }
  it { should have_many(:contrabands) }
  # it { should have_and_belong_to_many(:contraband_types) }
  it { should have_many(:control_tower_resources) }
  it { should have_many(:constellations) }
  it { should have_many(:regions) }
  it { should have_many(:solar_systems) }
  it { should have_many(:combat_zones) }
end
