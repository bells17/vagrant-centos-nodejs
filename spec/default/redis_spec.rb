require 'spec_helper'

describe package('redis'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe service('redis'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_enabled.with_level(3) }
end
