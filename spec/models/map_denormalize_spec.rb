require 'spec_helper'

describe MapDenormalize do
  before(:each) do
    @map_object = MapDenormalize.new
  end
  it 'should be an instance of MapDenormalize' do
    @map_object.should be_an_instance_of MapDenormalize
  end
  it { should belong_to(:item) }
  it { should belong_to(:type) }
  it { should belong_to(:group) }
  it { should belong_to(:solar_system) }
  it { should belong_to(:constellation) }
  it { should belong_to(:region) }
  it { should belong_to(:orbit) }
  it { should have_many(:orbiting_items) }
  it { should have_one(:jump) }
  it { should have_one(:scene) }
  it { should have_one(:wormhole_class) }
end
