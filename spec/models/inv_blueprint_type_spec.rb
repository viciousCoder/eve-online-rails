require 'spec_helper'

describe InvBlueprintType do
  before(:each) do
    @inv_blueprint_type = InvBlueprintType.new
  end
  it 'should be an instance of InvBlueprintType' do
    @inv_blueprint_type.should be_an_instance_of InvBlueprintType
  end
  it { should belong_to(:blueprint) }
  it { should belong_to(:parent_blueprint) }
  it { should belong_to(:product) }
end
