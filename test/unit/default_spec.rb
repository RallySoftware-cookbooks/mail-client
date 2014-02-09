require_relative 'spec_helper'

describe 'mail_client::default' do
  context 'when platform_family' do

    subject(:chef_run) do
      ChefSpec::Runner.new do |node|
        node.automatic_attrs[:platform_family] = platform_family
      end.converge described_recipe
    end

    describe 'rhel' do
      let(:platform_family) { 'rhel' }

      it { should include_recipe 'yum-epel' }
      it { should install_package 'mutt' }
      it { should install_package 'alpine' }
    end

    describe 'debian' do
      let(:platform_family) { 'debian' }

      it { should include_recipe 'apt' }
      it { should install_package 'mutt' }
    end
  end
end
