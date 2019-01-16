require 'spec_helper'
describe 'client_1c' do
  context 'with default values for all parameters' do
    it { should contain_class('client_1c') }
  end
end
