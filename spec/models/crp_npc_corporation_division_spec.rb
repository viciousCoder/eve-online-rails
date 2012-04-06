require 'spec_helper'

describe CrpNpcCorporationDivision do
  before(:each) do
    @crp_object = CrpNpcCorporationDivision.new
  end
  it 'should be an instance of CrpNpcCorporationDivision' do
    @crp_object.should be_an_instance_of CrpNpcCorporationDivision
  end
  it { should belong_to(:corporation) }
  it { should belong_to(:division) }
end
