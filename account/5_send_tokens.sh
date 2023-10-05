#!/bin/bash

set -euo pipefail

# Replace "mywallet" with your wallet name and okp41r0pf2d78w8w29sm9a6qm8x6yqshezm0k6vwcrg to change the receiver address
okp4d tx bank send mywallet okp41r0pf2d78w8w29sm9a6qm8x6yqshezm0k6vwcrg \
    500000uknow \
    --chain-id okp4-nemeton-1 --node https://api.testnet.okp4.network:443/rpc
