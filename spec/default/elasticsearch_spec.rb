require 'spec_helper'

describe package('elasticsearch') do
  it { should be_installed }
end

describe service('elasticsearch') do
  it { should be_enabled   }
  it { should be_running   }
end
