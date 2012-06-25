require 'spec_helper'

describe RamAssemblyLineType do
  before(:each) do
    @ram_object = RamAssemblyLineType.new
  end
  it 'should be an instance of RamAssemblyLineType' do
    @ram_object.should be_an_instance_of RamAssemblyLineType
  end
  it { should have_many(:assembly_lines) }
  it { should have_many(:assembly_line_stations) }
  it { should belong_to(:activity) }
  it { should have_many(:details_per_category) }
  it { should have_many(:details_per_group) }
  it { should have_many(:installation_type_content) }
end
