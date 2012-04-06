require 'spec_helper'

describe ChrAncestry do
  before(:each) do
    @chr_object = ChrAncestry.new
  end
  it 'should be an instance of ChrAncestry' do
    @chr_object.should be_an_instance_of ChrAncestry
  end
  it { should belong_to(:bloodline) }
  it { should belong_to(:icon) }
end
