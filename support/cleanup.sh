#!/bin/bash

docker stop haproxy apache01 apache02
sleep 5
docker rmi puppet-test-xyz