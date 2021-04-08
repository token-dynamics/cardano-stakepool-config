#!/usr/bin/env bash

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

curl https://dl.haskellworks.io/binaries/libsodium/23.3.0/libsodium.tar.gz | tar zxvf - -C /usr
curl https://dl.haskellworks.io/binaries/cardano-node/1.26.1/cardano-node.tar.gz | tar zxvf - -C /usr/local/bin
curl https://dl.haskellworks.io/binaries/cardano-cli/1.26.1/cardano-cli.tar.gz | tar zxvf - -C /usr/local/bin

cardano-node version
