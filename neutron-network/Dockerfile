FROM sumikof/openstack-neutron-base

RUN apt update -y \
 && apt -y install \
    neutron-linuxbridge-agent \
    neutron-l3-agent \
    neutron-dhcp-agent \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*

ADD template/neutron.conf.template /template
ADD template/l3_agent.ini.template /template
ADD template/dhcp_agent.ini.template /template
ADD template/metadata_agent.ini.template /template
ADD template/ml2_conf.ini.template /template
ADD template/linuxbridge_agent.ini.template /template

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
