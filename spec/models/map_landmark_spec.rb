require 'spec_helper'

describe MapLandmark do
  before(:each) do
    @map_object = MapLandmark.new
  end
  it 'should be an instance of MapLandmark' do
    @map_object.should be_an_instance_of MapLandmark
  end
end
