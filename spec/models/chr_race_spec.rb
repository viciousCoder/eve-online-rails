require 'spec_helper'

describe ChrRace do
  before(:each) do
    @chr_object = ChrRace.new
  end
  it 'should be an instance of ChrRace' do
    @chr_object.should be_an_instance_of ChrRace
  end
  it { should have_many(:bloodlines) }
  it { should have_many(:factions) }
  it { should belong_to(:icon) }
  it { should have_many(:types) }
end
