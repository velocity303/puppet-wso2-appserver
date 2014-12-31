require 'spec_helper'
describe 'wso2appserver' do

  context 'with defaults for all parameters' do
    it { should contain_class('wso2appserver') }
  end
end
