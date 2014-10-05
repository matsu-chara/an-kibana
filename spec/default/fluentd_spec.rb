require 'spec_helper'

describe package('td-agent') do
  it { should be_installed }
end

describe service('td-agent') do
  it { should be_enabled   }
  it { should be_running   }
end

describe command('/usr/lib64/fluent/ruby/bin/fluent-gem list') do
    it { should return_exit_status 0 }
    it { should return_stdout(/fluent-plugin-elasticsearch/) }
end
