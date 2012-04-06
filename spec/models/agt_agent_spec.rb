require 'spec_helper'

describe AgtAgent do
  before(:each) do
    @agt_object = FactoryGirl.create(:AgtAgent)
  end
  it 'should be an instance of AgtAgent' do
    @agt_object.should be_an_instance_of AgtAgent
  end
  it { should belong_to(:division) }
  it { should belong_to(:station) }
  it { should belong_to(:corporation) }
  it { should belong_to(:type) }
  # a bug in shoulda/activerecord, doesn't handle case of our tables
  # it { should have_and_belong_to_many(:research_items) }
end
