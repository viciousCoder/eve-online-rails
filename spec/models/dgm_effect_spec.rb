require 'spec_helper'

describe DgmEffect do
  before(:each) do
    @dgm_object = DgmEffect.new
  end
  it 'should be an instance of DgmEffect' do
    @dgm_object.should be_an_instance_of DgmEffect
  end
  it { should belong_to(:icon) }
  it { should belong_to(:duration_attribute) }
  it { should belong_to(:tracking_speed_attribute) }
  it { should belong_to(:discharge_attribute) }
  it { should belong_to(:range_attribute) }
  it { should belong_to(:falloff_attribute) }
  it { should belong_to(:npc_usage_chance_attribute) }
  it { should belong_to(:npc_activation_chance_attribute) }
  it { should belong_to(:fitting_usage_chance_attribute) }
end
