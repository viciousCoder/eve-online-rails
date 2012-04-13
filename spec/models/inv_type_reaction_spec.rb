require 'spec_helper'

describe InvTypeReaction do
  before(:each) do
    @inv_object = InvTypeReaction.new
  end
  it 'should be an instance of InvTypeReaction' do
    @inv_object.should be_an_instance_of InvTypeReaction
  end
  it { should belong_to(:reaction_type) }
  it { should belong_to(:type) }
  # it { should have_many(:inputs) }
  # it { should have_many(:products) }
end
