require 'spec_helper'

describe CrpActivity do
  before(:each) do
    @crp_object = CrpActivity.new
  end
  it 'should be an instance of CrpActivity' do
    @crp_object.should be_an_instance_of CrpActivity
  end
  it { should have_many(:operations) }
end
