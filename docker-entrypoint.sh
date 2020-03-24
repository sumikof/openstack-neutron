#!/bin/bash
set -e

render neutron.conf.template -o /etc/neutron/neutron.conf

exec "$@"
