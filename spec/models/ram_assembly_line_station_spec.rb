require 'spec_helper'

describe RamAssemblyLineStation do
  before(:each) do
    @ram_object = RamAssemblyLineStation.new
  end
  it 'should be an instance of RamAssemblyLineStation' do
    @ram_object.should be_an_instance_of RamAssemblyLineStation
  end
end
