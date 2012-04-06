require 'spec_helper'

describe CrtRelationship do
  before(:each) do
    @crt_object = CrtRelationship.new
  end
  it 'should be an instance of CrtRelationship' do
    @crt_object.should be_an_instance_of CrtRelationship
  end
  it { should belong_to(:parent) }
  it { should belong_to(:child) }
  it { should belong_to(:parent_type) }
end
