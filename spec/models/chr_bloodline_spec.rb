require 'spec_helper'

describe ChrBloodline do
  before(:each) do
    @chr_object = ChrBloodline.new
  end
  it 'should be an instance of ChrBloodline' do
    @chr_object.should be_an_instance_of ChrBloodline
  end
  it { should have_many(:ancestries) }
  it { should belong_to(:race) }
  it { should belong_to(:ship_type) }
  it { should belong_to(:corporation) }
  it { should belong_to(:icon) }
end
