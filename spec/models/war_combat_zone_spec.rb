require 'spec_helper'

describe WarCombatZone do
  before(:each) do
    @war_object = WarCombatZone.new
  end
  it 'should be an instance of WarCombatZone' do
    @war_object.should be_an_instance_of WarCombatZone
  end
  it { should belong_to(:faction) }
  it { should belong_to(:center_system) }
  it { should have_many(:combat_zone_solar_systems) }
  it { should have_many(:solar_systems) }
end
