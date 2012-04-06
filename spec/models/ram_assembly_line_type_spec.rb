require 'spec_helper'

describe RamAssemblyLineType do
  before(:each) do
    @ram_object = RamAssemblyLineType.new
  end
  it 'should be an instance of RamAssemblyLineType' do
    @ram_object.should be_an_instance_of RamAssemblyLineType
  end
end
