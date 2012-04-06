require 'spec_helper'

describe RamAssemblyLineTypeDetailPerGroup do
  before(:each) do
    @ram_object = RamAssemblyLineTypeDetailPerGroup.new
  end
  it 'should be an instance of RamAssemblyLineTypeDetailPerGroup' do
    @ram_object.should be_an_instance_of RamAssemblyLineTypeDetailPerGroup
  end
end
