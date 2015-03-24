require 'spec_helper'

describe command('phantomjs -v'), :if => os[:family] == 'redhat' do
  its(:exit_status) { should eq 0 }
end
