#!/bin/env bash

./fetch.sh $1 $2

sed "s/vx.y.x/v$1/g" ./nfpm.yaml > ./nfpm-temp.yaml

nfpm pkg --config="nfpm-temp.yaml" --target="node-exporter_$1_$2.deb"

rm -rf ./bin ./node_exporter-$1.linux-$2 ./node_exporter-$1.linux-$2.tar.gz ./nfpm-temp.yaml
