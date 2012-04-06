require 'spec_helper'

describe RamInstallationTypeContent do
  before(:each) do
    @ram_object = RamInstallationTypeContent.new
  end
  it 'should be an instance of RamInstallationTypeContent' do
    @ram_object.should be_an_instance_of RamInstallationTypeContent
  end
end
