#!/bin/bash

# replace with your cognitarium instantiation transaction hash
okp4d query tx E0985541A08D1DCCA4F362DE445E44FB26A3AB374F84F9335B3EFCF247F263DA \
    --node https://api.testnet.okp4.network:443/rpc \
    --output json |
    jq '.logs[0].events[] | select(.type == "instantiate").attributes[] | select(.key == "_contract_address").value'
