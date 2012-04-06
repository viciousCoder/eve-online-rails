require 'spec_helper'

describe CrpNpcCorporationTrade do
  before(:each) do
    @crp_object = CrpNpcCorporationTrade.new
  end
  it 'should be an instance of CrpNpcCorporationTrade' do
    @crp_object.should be_an_instance_of CrpNpcCorporationTrade
  end
  it { should belong_to(:corporation) }
  it { should belong_to(:item) }
end
