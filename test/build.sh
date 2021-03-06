#!/bin/bash

set -e
# set -x

export ATC_URL=${ATC_URL:-"http://192.168.100.4:8080"}
echo "Concourse API $ATC_URL"

./01_*/run.sh
./02_*/run.sh
./03_*/run.sh
./06_*/run.sh
./07_*/run.sh simple
./07_*/run.sh renamed
./08_*/run.sh
./09_*/run.sh ls-abc-xyz
./09_*/run.sh ls-abc
./09_*/run.sh pretty-ls
./10_*/run.sh
# ./11_*/run.sh stub.yml
./12_*/run.sh stub.yml
./20_*/run.sh stub.yml get-version
./20_*/run.sh stub.yml display-version
./20_*/run.sh stub.yml rename-resource
./20_*/run.sh stub.yml bump-minor
./20_*/run.sh stub.yml bump-rc-save
./20_*/run.sh stub.yml bump-save-no-trigger
