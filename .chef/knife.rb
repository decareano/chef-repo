# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "reydelcompas"
client_key               "#{current_dir}/reydelcompas.pem"
validation_client_name   "danclass-validator"
validation_key           "#{current_dir}/danclass-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/danclass"
cookbook_path            ["#{current_dir}/../cookbooks"]
