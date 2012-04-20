require 'spec_helper'

describe RamAssemblyLine do
  before(:each) do
    @ram_object = RamAssemblyLine.new
  end
  it 'should be an instance of RamAssemblyLine' do
    @ram_object.should be_an_instance_of RamAssemblyLine
  end
  it { should belong_to(:assembly_line_type) }
  it { should belong_to(:station) }
  it { should belong_to(:owner) }
  it { should belong_to(:activity) }
end
