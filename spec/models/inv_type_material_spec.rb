require 'spec_helper'

describe InvTypeMaterial do
  before(:each) do
    @inv_object = InvTypeMaterial.new
  end
  it 'should be an instance of InvTypeMaterial' do
    @inv_object.should be_an_instance_of InvTypeMaterial
  end
  it { should belong_to(:type) }
  it { should belong_to(:material_type) }
end
