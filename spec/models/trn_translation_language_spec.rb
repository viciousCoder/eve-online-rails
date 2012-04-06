require 'spec_helper'

describe TrnTranslationLanguage do
  before(:each) do
    @trn_object = TrnTranslationLanguage.new
  end
  it 'should be an instance of TrnTranslationLanguage' do
    @trn_object.should be_an_instance_of TrnTranslationLanguage
  end
end
