require 'spec_helper'

describe InvType do
  before(:each) do
    @inv_object = InvType.new
  end
  it 'should be an instance of InvType' do
    @inv_object.should be_an_instance_of InvType
  end
  # a bug in shoulda/activerecord: doesn't like case of our tables
  # it { should have_and_belong_to_many(:research_agents) }
  it { should have_many(:bloodlines) }
  # it { should have_and_belong_to_many(:research_corporations) }
  # it { should have_and_belong_to_many(:trade_corporations) }
  it { should have_many(:certificate_recommendations) }
  # it { should have_and_belong_to_many(:certificate_dependencies) }
  it { should have_many(:type_attributes) }
  # it { should have_and_belong_to_many(:attributes) }
  it { should have_many(:type_effects) }
  # it { should have_and_belong_to_many(:effects) }
  it { should have_one(:blueprint_data) }
  it { should have_many(:parent_blueprints) }
  it { should have_one(:product_blueprint_data) }
  it { should have_many(:contrabands) }
  # it { should have_and_belong_to_many(:contraband_for_factions) }
  it { should have_many(:control_tower_requirements) }
  # it { should have_and_belong_to_many(:control_tower_resources) }
  it { should have_many(:required_for_control_tower) }
  # it { should have_and_belong_to_many(:resource_for_control_towers) }
  it { should have_many(:items) }
  it { should have_one(:meta_type) }
  it { should have_many(:meta_children) }
  # it { should have_and_belong_to_many(:meta_types) }
  it { should have_many(:reactions) } # reaction intermediate join relation
  it { should have_many(:reactant_reactions) } # reactions where this type is an input
  it { should have_many(:product_reactions) } # reactions where this type is an output
  it { should have_many(:type_reactions) } # reactions where this type is input or output
  it { should belong_to(:group) }
  it { should belong_to(:graphic) }
  it { should belong_to(:race) }
  it { should belong_to(:market_group) }
  it { should belong_to(:icon) }
  it { should have_many(:denormalized_items) }
  it { should have_many(:sun_solar_systems) }
  it { should have_many(:schematic_pin_maps) }
  it { should have_and_belong_to_many(:installable_schematics) }
  it { should have_many(:schematic_type_maps) }
  it { should have_many(:input_for_schematics) }
  it { should have_many(:output_for_schematics) }
  it { should have_many(:assembly_line_content) }
  it { should have_many(:requirements) }
  it { should have_many(:required_for) }
end
