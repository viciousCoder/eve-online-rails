require 'spec_helper'

describe TrnTranslationColumn do
  before(:each) do
    @trn_object = TrnTranslationColumn.new
  end
  it 'should be an instance of TrnTranslationColumn' do
    @trn_object.should be_an_instance_of TrnTranslationColumn
  end
end
