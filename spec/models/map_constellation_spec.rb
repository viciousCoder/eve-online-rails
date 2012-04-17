require 'spec_helper'

describe MapConstellation do
  before(:each) do
    @map_object = MapConstellation.new
  end
  it 'should be an instance of MapConstellation' do
    @map_object.should be_an_instance_of MapConstellation
  end
  it { should have_many(:jumps) }
  it { should belong_to(:region) }
  it { should belong_to(:faction) }
  it { should have_many(:items) }
end
