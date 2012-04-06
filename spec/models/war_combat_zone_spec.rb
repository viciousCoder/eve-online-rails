require 'spec_helper'

describe WarCombatZone do
  before(:each) do
    @war_object = WarCombatZone.new
  end
  it 'should be an instance of WarCombatZone' do
    @war_object.should be_an_instance_of WarCombatZone
  end
end
