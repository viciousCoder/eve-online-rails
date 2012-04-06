require 'spec_helper'

describe TrnTranslation do
  before(:each) do
    @trn_object = TrnTranslation.new
  end
  it 'should be an instance of TrnTranslation' do
    @trn_object.should be_an_instance_of TrnTranslation
  end
end
