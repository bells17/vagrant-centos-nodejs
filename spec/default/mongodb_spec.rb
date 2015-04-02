require 'spec_helper'

describe package('mongodb-org'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe service('mongod'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_enabled.with_level(3) }
end

describe port(27017) do
  it { should be_listening.on('0.0.0.0').with('tcp') }
end
