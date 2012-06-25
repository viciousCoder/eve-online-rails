require 'spec_helper'

describe StaOperation do
  before(:each) do
    @sta_object = StaOperation.new
  end
  it 'should be an instance of StaOperation' do
    @sta_object.should be_an_instance_of StaOperation
  end
  it { should belong_to(:activity) }
  it { should belong_to(:caldari_station_type) }
  it { should belong_to(:minmatar_station_type) }
  it { should belong_to(:amarr_station_type) }
  it { should belong_to(:gallente_station_type) }
  it { should belong_to(:jove_station_type) }
  it { should have_many(:operation_services) }
  it { should have_many(:stations) }
end
