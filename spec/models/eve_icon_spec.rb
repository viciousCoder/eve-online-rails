require 'spec_helper'

describe EveIcon do
  before(:each) do
    @dgm_object = EveIcon.new
  end
  it 'should be an instance of EveIcon' do
    @dgm_object.should be_an_instance_of EveIcon
  end
  it { should have_many(:ancestries) }
  it { should have_many(:attributes) }
  it { should have_many(:bloodlines) }
  it { should have_many(:factions) }
  it { should have_many(:races) }
  it { should have_many(:corporations) }
  it { should have_many(:certificates) }
  it { should have_many(:item_attributes) }
  it { should have_many(:categories) }
  it { should have_many(:groups) }
  it { should have_many(:market_groups) }
  it { should have_many(:types) }
  it { should have_many(:landmarks) }
end
