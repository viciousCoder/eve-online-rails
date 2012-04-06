require 'spec_helper'

describe CrpNpcCorporationResearchField do
  before(:each) do
    @crp_object = CrpNpcCorporationResearchField.new
  end
  it 'should be an instance of CrpNpcCorporationResearchField' do
    @crp_object.should be_an_instance_of CrpNpcCorporationResearchField
  end
  it { should belong_to(:corporation) }
  it { should belong_to(:skill) }
end
