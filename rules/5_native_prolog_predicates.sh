#!/bin/bash

set -euo pipefail

# To get the list of all available predicates,
# you can query the logic module parameters
okp4d --node "https://api.testnet.okp4.network:443/rpc" \
  query logic params -ojson |
  jq -r '.params.interpreter.predicates_filter | "whitelist: " + (.whitelist | join(", ")) + "\nblacklist: " + (.blacklist | join(", "))'
