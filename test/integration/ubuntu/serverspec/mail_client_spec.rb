require_relative 'spec_helper'

describe package('mutt') do
  it { should be_installed }
end

