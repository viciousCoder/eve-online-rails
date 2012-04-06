require 'spec_helper'

describe InvType do
  before(:each) do
    @inv_object = InvType.new
  end
  it 'should be an instance of InvType' do
    @inv_object.should be_an_instance_of InvType
  end
  # a bug in shoulda/activerecord: doesn't like case of our tables
  # it { should have_and_belong_to_many(:research_agents) }
  it { should have_many(:bloodlines) }
  # it { should have_and_belong_to_many(:research_corporations) }
  # it { should have_and_belong_to_many(:trade_corporations) }
  it { should have_many(:certificate_recommendations) }
end
