#!/bin/bash
set -x

render neutron.conf.template -o /etc/neutron/neutron.conf
render l3_agent.ini.template -o /etc/neutron/l3_agent.ini
render dhcp_agent.ini.template -o /etc/neutron/dhcp_agent.ini
render metadata_agent.ini.template -o /etc/neutron/metadata_agent.ini
render linuxbridge_agent.ini.template -o /etc/neutron/plugins/ml2/linuxbridge_agent.ini

render ml2_conf.ini.template -o /etc/neutron/plugins/ml2/ml2_conf.ini
ln -s /etc/neutron/plugins/ml2/ml2_conf.ini /etc/neutron/plugin.ini

exec "$@"
