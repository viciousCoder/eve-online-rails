require 'spec_helper'

describe WarCombatZoneSystem do
  before(:each) do
    @war_object = WarCombatZoneSystem.new
  end
  it 'should be an instance of WarCombatZoneSystem' do
    @war_object.should be_an_instance_of WarCombatZoneSystem
  end
  it { should belong_to(:solar_system) }
  it { should belong_to(:combat_zone) }
end
