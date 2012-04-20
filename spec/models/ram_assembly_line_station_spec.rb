require 'spec_helper'

describe RamAssemblyLineStation do
  before(:each) do
    @ram_object = RamAssemblyLineStation.new
  end
  it 'should be an instance of RamAssemblyLineStation' do
    @ram_object.should be_an_instance_of RamAssemblyLineStation
  end
  it { should belong_to(:station) }
  it { should belong_to(:assembly_line_type) }
  it { should belong_to(:station_type) }
  it { should belong_to(:owner) }
  it { should belong_to(:solar_system) }
  it { should belong_to(:region) }
end
