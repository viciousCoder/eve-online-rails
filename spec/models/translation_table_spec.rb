require 'spec_helper'

describe TranslationTable do
  before(:each) do
    @trn_object = TranslationTable.new
  end
  it 'should be an instance of TranslationTable' do
    @trn_object.should be_an_instance_of TranslationTable
  end
end
