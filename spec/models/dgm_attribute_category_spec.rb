require 'spec_helper'

describe DgmAttributeCategory do
  before(:each) do
    @dgm_object = DgmAttributeCategory.new
  end
  it 'should be an instance of DgmAttributeCategory' do
    @dgm_object.should be_an_instance_of DgmAttributeCategory
  end
  it { should have_many(:item_attributes) }
end
