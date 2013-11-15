require_relative 'spec_helper'

describe 'mail-client::default' do
  let (:chef_run) { ChefSpec::Runner.new.converge 'mail-client::default' }

  it 'should do install mutt' do
    expect(chef_run).to install_package 'mutt'
  end

  it 'should do install alpine' do
    expect(chef_run).to install_package 'alpine'
  end

end
