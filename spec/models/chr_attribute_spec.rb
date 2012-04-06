require 'spec_helper'

describe ChrAttribute do
  before(:each) do
    @chr_object = ChrAttribute.new
  end
  it 'should be an instance of ChrAttribute' do
    @chr_object.should be_an_instance_of ChrAttribute
  end
  it { should belong_to(:icon) }
end
