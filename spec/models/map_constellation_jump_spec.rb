require 'spec_helper'

describe MapConstellationJump do
  before(:each) do
    @map_object = MapConstellationJump.new
  end
  it 'should be an instance of MapConstellationJump' do
    @map_object.should be_an_instance_of MapConstellationJump
  end
  it { should belong_to(:from_region) }
  it { should belong_to(:from_constellation) }
  it { should belong_to(:to_constellation) }
  it { should belong_to(:to_region) }
end
