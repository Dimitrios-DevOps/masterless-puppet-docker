#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

docker build ${SCRIPT_DIR}/../. -t puppet-test-xyz

docker run --rm -d -p 8080:80 -p 8081:81 -h service-haproxy --name haproxy puppet-test-xyz
docker exec haproxy puppet apply /puppet-manifests

docker run --rm -d -p 50130:50130 -h service-apache-01 --name apache01 puppet-test-xyz
docker exec apache01 puppet apply /puppet-manifests

docker run --rm -d -p 51130:51130 -h service-apache-02 --name apache02 puppet-test-xyz
docker exec apache02 puppet apply /puppet-manifests