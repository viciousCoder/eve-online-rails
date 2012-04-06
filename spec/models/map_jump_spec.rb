require 'spec_helper'

describe MapJump do
  before(:each) do
    @map_object = MapJump.new
  end
  it 'should be an instance of MapJump' do
    @map_object.should be_an_instance_of MapJump
  end
end
