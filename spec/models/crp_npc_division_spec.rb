require 'spec_helper'

describe CrpNpcDivision do
  before(:each) do
    @crp_object = CrpNpcDivision.new
  end
  it 'should be an instance of CrpNpcDivision' do
    @crp_object.should be_an_instance_of CrpNpcDivision
  end
  it { should have_many(:agents) }
  it { should have_many(:corporation_divisions) }
  # it { should have_and_belong_to_many(:corporations) }
end
