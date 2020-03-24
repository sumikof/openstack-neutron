FROM sumikof/openstack-base

RUN apt update -y \
 && apt -y install \
    neutron-server \
    neutron-metadata-agent \
    neutron-plugin-ml2 \
    python3-neutronclient \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*

ADD neutron.conf.template /template

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
