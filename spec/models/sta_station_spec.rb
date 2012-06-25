require 'spec_helper'

describe StaStation do
  before(:each) do
    @sta_object = StaStation.new
  end
  it 'should be an instance of StaStation' do
    @sta_object.should be_an_instance_of StaStation
  end
  it { should have_many(:agents) }
  it { should have_many(:assembly_lines) }
  it { should have_many(:assembly_line_stations) }
  it { should belong_to(:operation) }
  it { should belong_to(:station_type) }
  it { should belong_to(:corporation) }
  it { should belong_to(:solar_system) }
  it { should belong_to(:constellation) }
  it { should belong_to(:region) }
end
