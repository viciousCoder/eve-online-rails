require 'spec_helper'

describe CrtCertificate do
  before(:each) do
    @crt_object = CrtCertificate.new
  end
  it 'should be an instance of CrtCertificate' do
    @crt_object.should be_an_instance_of CrtCertificate
  end
  it { should belong_to(:category) }
  it { should belong_to(:crt_class) }
  it { should belong_to(:corporation) }
  it { should belong_to(:icon) }
  it { should have_many(:recommendations) }
end
