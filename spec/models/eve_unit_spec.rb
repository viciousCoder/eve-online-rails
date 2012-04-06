require 'spec_helper'

describe EveUnit do
  before(:each) do
    @dgm_object = EveUnit.new
  end
  it 'should be an instance of EveUnit' do
    @dgm_object.should be_an_instance_of EveUnit
  end
  it { should have_many(:item_attributes) }
end
