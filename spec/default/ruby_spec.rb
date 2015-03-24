require 'spec_helper'

describe command('source /etc/profile.d/rbenv.sh && ruby -v'), :if => os[:family] == 'redhat' do
  its(:exit_status) { should eq 0 }
end
