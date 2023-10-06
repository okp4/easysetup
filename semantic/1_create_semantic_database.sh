#!/bin/bash

set -euo pipefail

# instantiate a cognitarium (code id = 7) smart contract
# see https://docs.okp4.network/contracts/okp4-cognitarium#instantiatemsg
# replace okp41cu9wzlcyyxpek20jaqfwzu3llzjgx34cwnv2v5 by your wallet address
okp4d tx wasm instantiate 7 \
    --from okp41cu9wzlcyyxpek20jaqfwzu3llzjgx34cwnv2v5 \
    --label "ontology-tutorial-ex-$(date +%s)" \
    --admin okp41cu9wzlcyyxpek20jaqfwzu3llzjgx34cwnv2v5 \
    --chain-id okp4-nemeton-1 \
    --gas 1000000 \
    --node https://api.testnet.okp4.network:443/rpc \
    "{}"
