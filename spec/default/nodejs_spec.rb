require 'spec_helper'

describe command('source ~/.nvm/nvm.sh && node -v'), :if => os[:family] == 'redhat' do
  its(:exit_status) { should eq 0 }
end
