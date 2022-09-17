#! /usr/bin/env bash

./fetch.sh $1 $2

sed "s/vx.y.x/v$1/g" ./nfpm.yaml > ./nfpm-temp.yaml

nfpm pkg --packager deb --config="nfpm-temp.yaml"
nfpm pkg --packager rpm --config="nfpm-temp.yaml"

rm -rf ./node_exporter-$1.linux-$2 ./node_exporter-$1.linux-$2.tar.gz \
	./nfpm-temp.yaml ./LICENSE ./NOTICE ./node_exporter
