require 'spec_helper'

describe RamActivity do
  before(:each) do
    @ram_object = RamActivity.new
  end
  it 'should be an instance of RamActivity' do
    @ram_object.should be_an_instance_of RamActivity
  end
  it { should have_many(:assembly_lines) }
end
