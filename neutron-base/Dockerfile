FROM sumikof/openstack-base

RUN apt update -y \
 && apt -y install \
    neutron-metadata-agent \
    neutron-plugin-ml2 \
    python3-neutronclient \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*

