require 'spec_helper'

describe PlanetSchematic do
  before(:each) do
    @planet_object = PlanetSchematic.new
  end
  it 'should be an instance of PlanetSchematic' do
    @planet_object.should be_an_instance_of PlanetSchematic
  end
  it { should have_many(:pin_maps) }
  it { should have_and_belong_to_many(:facilities) }
  it { should have_many(:type_maps) }
  it { should have_many(:inputs) }
  it { should have_many(:outputs) }
end
