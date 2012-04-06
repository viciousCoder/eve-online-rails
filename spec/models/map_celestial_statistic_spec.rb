require 'spec_helper'

describe MapCelestialStatistic do
  before(:each) do
    @map_object = MapCelestialStatistic.new
  end
  it 'should be an instance of MapCelestialStatistic' do
    @map_object.should be_an_instance_of MapCelestialStatistic
  end
end
