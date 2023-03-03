require 'spec_helper'

listen_port = 80

describe service('nginx') do
  it { should be_running }
end

describe command("ps aux | grep unicorn" ) do
  its(:stdout) { should contain("unicorn master") }
end

alb_dns=ENV['RDS_DNS']

describe command('curl #{alb_dns} -o /dev/null -w "%{http_code}\n" -s') do
its(:stdout) { should match /^200$/ }
end
