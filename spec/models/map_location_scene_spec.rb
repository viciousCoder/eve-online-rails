require 'spec_helper'

describe MapLocationScene do
  before(:each) do
    @map_object = MapLocationScene.new
  end
  it 'should be an instance of MapLocationScene' do
    @map_object.should be_an_instance_of MapLocationScene
  end
  it { should belong_to(:location) }
  it { should belong_to(:graphic) }
end
