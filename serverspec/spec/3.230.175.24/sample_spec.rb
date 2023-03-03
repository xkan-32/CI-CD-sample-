require 'spec_helper'

listen_port = 80

describe service('nginx') do
  it { should be_running }
end

describe command("ps aux | grep unicorn" ) do
  its(:stdout) { should contain("unicorn master") }
end


describe command('curl http://ENV['ALB_DNS']/ -o /dev/null -w "%{http_code}\n" -s') do
its(:stdout) { should match /^200$/ }
end
