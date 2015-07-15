require 'serverspec'

# Required  by serverspec
set :backend, :exec

describe "apache_spec" do

  it "is listening on port 80" do
    expect(port(80)).to be_listening
  end

  it "has a running service of apache2" do
    expect(service("apache2")).to be_running
  end
describe file('/var/www/html/index.html') do
  it {should be_file}
end

end
