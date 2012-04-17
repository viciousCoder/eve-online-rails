require 'spec_helper'

describe DgmTypeEffect do
  before(:each) do
    @dgm_object = DgmTypeAttribute.new
  end
  it 'should be an instance of DgmTypeAttribute' do
    @dgm_object.should be_an_instance_of DgmTypeAttribute
  end
  it { should belong_to(:type) }
  it { should belong_to(:effect) }
end
