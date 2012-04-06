require 'spec_helper'

describe EveGraphic do
  before(:each) do
    @dgm_object = EveGraphic.new
  end
  it 'should be an instance of EveGraphic' do
    @dgm_object.should be_an_instance_of EveGraphic
  end
end
