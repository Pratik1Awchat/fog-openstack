# OpenStack Compute (Nova) Example

require 'fog/openstack'

auth_url = "https://iam.sa-brazil-1.telefonicaopencloud.com"
username = 'c2c_admin'
password = 'Newuser@123'
project = 'sa-brazil-1'
domain = 'Huawei China'

compute_client ||= ::Fog::Compute.new(:provider           => :openstack,
                                      :openstack_api_key  => password  ,
                                      :openstack_username => username  ,
                                      :openstack_auth_url => auth_url  ,
                                      :openstack_project_name   => project,
									  :openstack_domain_name   => domain)

p compute_client.servers