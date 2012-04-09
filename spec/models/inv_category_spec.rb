require 'spec_helper'

describe InvCategory do
  before(:each) do
    @inv_category = InvCategory.new
  end
  it 'should be an instance of InvCategory' do
    @inv_category.should be_an_instance_of InvCategory
  end
  it { should belong_to(:icon) }
  it { should have_many(:groups) }
end
