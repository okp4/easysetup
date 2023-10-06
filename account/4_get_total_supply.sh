#!/bin/bash

set -euo pipefail

okp4d query bank total \
    --node https://api.testnet.okp4.network:443/rpc
