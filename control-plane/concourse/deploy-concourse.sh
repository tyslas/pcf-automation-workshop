#!/usr/bin/env bash

#bosh int concourse-bosh-deployment/cluster/concourse.yml \
bosh deploy -d concourse concourse-bosh-deployment/cluster/concourse.yml \
  -o concourse-bosh-deployment/cluster/operations/tls.yml \
  -o concourse-bosh-deployment/cluster/operations/scale.yml \
  -o operations/uaa.yml \
  -o operations/credhub.yml \
  -o operations/basic-auth.yml \
  -o operations/tls-port.yml \
  -o operations/azs.yml \
  -o operations/worker-network.yml \
  -o operations/web-network.yml \
  -l concourse-bosh-deployment/versions.yml \
  -l concourse-vars.yml -n
