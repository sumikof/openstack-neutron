FROM sumikof/openstack-neutron-base

RUN apt update -y \
 && apt -y install \
    neutron-server \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*

ADD template/neutron.conf.template /template
ADD template/metadata_agent.ini.template /template
ADD template/ml2_conf.ini.template /template

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
