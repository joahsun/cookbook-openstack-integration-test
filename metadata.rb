# encoding: UTF-8
name 'openstack-integration-test'
maintainer 'openstack-chef'
maintainer_email 'openstack-dev@lists.openstack.org'
license 'Apache 2.0'
description 'Installs and configures the Tempest Integration Test Suite'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '14.0.0'
recipe 'openstack-integration-test::setup', 'Installs and configures Tempest'

%w(ubuntu redhat centos).each do |os|
  supports os
end

depends 'openstack-common', '>= 14.0.0'
depends 'openstack-identity', '>= 14.0.0'
depends 'openstack-image', '>= 14.0.0'
depends 'openstack-compute', '>= 14.0.0'
depends 'openstack-block-storage', '>= 14.0.0'
