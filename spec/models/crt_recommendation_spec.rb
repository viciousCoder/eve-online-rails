require 'spec_helper'

describe CrtRecommendation do
  before(:each) do
    @crt_object = CrtRecommendation.new
  end
  it 'should be an instance of CrtRecommendation' do
    @crt_object.should be_an_instance_of CrtRecommendation
  end
  it { should belong_to(:ship_type) }
  it { should belong_to(:certificate) }
end
