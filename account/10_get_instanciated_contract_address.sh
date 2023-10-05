#!/bin/bash

# change the hash 4DB4644E6146DE0E7239C5273F79C931193F542D62979ACB907C9368A315DCE1 to get information from an instantitate transaction
okp4d query tx CB200354719B58A990A077337686CFAF64E95893037AF599DABC2E3B72297FD9 \
    --node https://api.testnet.okp4.network:443/rpc \
    --output json | jq '.logs[0].events[] | select(.type == "instantiate").attributes[] | select(.key == "_contract_address").value'
