#!/bin/bash

set -euo pipefail

# evaluate a Prolog query
# from rules stored on a specific "law stone" smart contract instance
okp4d query wasm contract-state smart okp41dey5a35ssvfulh2xud3nkwk423fp0t40nga4a8xykx9frmhm6jpqne0alf \
    --node https://api.testnet.okp4.network:443/rpc \
    "{\"ask\": {\"query\": \"can_vote(X).\"}}"
