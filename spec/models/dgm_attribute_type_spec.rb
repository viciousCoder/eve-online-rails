require 'spec_helper'

describe DgmAttributeType do
  before(:each) do
    @dgm_object = DgmAttributeType.new
  end
  it 'should be an instance of DgmAttributeType' do
    @dgm_object.should be_an_instance_of DgmAttributeType
  end
  it { should belong_to(:icon) }
  it { should belong_to(:unit) }
  it { should belong_to(:category) }
  it { should have_many(:duration_effects) }
  it { should have_many(:tracking_speed_effects) }
  it { should have_many(:discharge_effects) }
  it { should have_many(:range_effects) }
  it { should have_many(:falloff_effects) }
  it { should have_many(:npc_usage_chance_effects) }
  it { should have_many(:npc_activation_chance_effects) }
  it { should have_many(:fitting_usage_chance_effects) }
  it { should have_many(:type_attributes) }
  # it { should have_and_belong_to_many(:types) }
end
