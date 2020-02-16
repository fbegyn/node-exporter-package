#!/bin/env bash
curl -fSL -o "./node_exporter-$1.linux-$2.tar.gz" \
  "https://github.com/prometheus/node_exporter/releases/download/v$1/node_exporter-$1.linux-$2.tar.gz"

tar xzvf ./node_exporter-$1.linux-$2.tar.gz

# get binaries
mkdir ./bin
cp ./node_exporter-$1.linux-$2/node_exporter ./bin/
