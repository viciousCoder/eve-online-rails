require 'spec_helper'

describe StaStationType do
  before(:each) do
    @sta_object = StaStationType.new
  end
  it 'should be an instance of StaStationType' do
    @sta_object.should be_an_instance_of StaStationType
  end
  it { should have_many(:assembly_line_stations) }
  it { should have_many(:caldari_operations) }
  it { should have_many(:minmatar_operations) }
  it { should have_many(:amarr_operations) }
  it { should have_many(:gallente_operations) }
  it { should have_many(:jove_operations) }
  it { should have_many(:stations) }
  it { should belong_to(:operation) }
end
