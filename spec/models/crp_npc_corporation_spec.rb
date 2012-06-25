require 'spec_helper'

describe CrpNpcCorporation do
  before(:each) do
    @crp_object = CrpNpcCorporation.new
  end
  it 'should be an instance of CrpNpcCorporation' do
    @crp_object.should be_an_instance_of CrpNpcCorporation
  end
  it { should have_many(:agents) }
  it { should have_many(:bloodlines) }
  it { should have_many(:factions) }
  it { should have_many(:militia_for_factions) }
  it { should have_many(:corporation_divisions) }
  # it { should have_and_belong_to_many(:divisions) }
  # it { should have_and_belong_to_many(:research_fields) }
  # it { should have_and_belong_to_many(:trades) }
  it { should belong_to(:solar_system) }
  it { should belong_to(:investor_1) }
  it { should belong_to(:investor_2) }
  it { should belong_to(:investor_3) }
  it { should belong_to(:investor_4) }
  it { should belong_to(:friend) }
  it { should have_many(:friends_to) }
  it { should have_many(:enemies_to) }
  it { should belong_to(:enemy) }
  it { should belong_to(:faction) }
  it { should belong_to(:icon) }
  it { should have_one(:inv_name) }
  it { should have_many(:certificates) }
  it { should have_many(:assembly_lines) }
  it { should have_many(:assembly_line_stations) }
  it { should have_many(:stations) }
end
