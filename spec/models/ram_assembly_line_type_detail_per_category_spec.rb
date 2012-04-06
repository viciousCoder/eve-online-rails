require 'spec_helper'

describe RamAssemblyLineTypeDetailPerCategory do
  before(:each) do
    @ram_object = RamAssemblyLineTypeDetailPerCategory.new
  end
  it 'should be an instance of RamAssemblyLineTypeDetailPerCategory' do
    @ram_object.should be_an_instance_of RamAssemblyLineTypeDetailPerCategory
  end
end
