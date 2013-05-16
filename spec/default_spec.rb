require 'chefspec'

describe 'mail-client::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'mail-client::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
