#!/bin/bash

set -euo pipefail

# instantiate a law stone (code id = 5) smart contract
# see https://docs.okp4.network/contracts/okp4-law-stone#instantiatemsg
# replace mywallet with your wallet name
okp4d tx wasm instantiate 5 \
    --from mywallet \
    --label "rules-tutorial-ex-$(date +%s)" \
    --no-admin \
    --chain-id okp4-nemeton-1 \
    --gas 1000000 \
    --node https://api.testnet.okp4.network:443/rpc \
    "{\"program\":\"$(cat my_knowledgebase.pl | base64 | tr -d '\n\r')\", \"storage_address\": \"okp41lppz4x9dtmccek2m6cezjlwwzup6pdqrkvxjpk95806c3dewgrfq602kgx\"}"
