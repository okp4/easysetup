#!/bin/bash

set -euo pipefail

okp4d query logic ask \
    --node https://api.testnet.okp4.network:443/rpc \
    --program "memberOf(alice, council). memberOf(bob,council). can_vote(X) :- memberOf(X, council)." \
    "can_vote(X)."
