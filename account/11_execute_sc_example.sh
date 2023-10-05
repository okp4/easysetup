#!/bin/bash

# insert "Hello OKP4 Builders" in a objectarium instance (okp41tca04wdta7pyzzyetgqyl2rn9v5vgxq0cwvdduel8sgw4g64at7q8jja85)
# execute a 'store_object' message, see https://docs.okp4.network/contracts/okp4-objectarium#executemsgstoreobject
# replace mywallet by your wallet name
echo "Hello OKP4 Builders" >text-ex.txt &&
    okp4d tx wasm execute okp41tca04wdta7pyzzyetgqyl2rn9v5vgxq0cwvdduel8sgw4g64at7q8jja85 \
        --from mywallet \
        --gas 1000000 \
        --chain-id okp4-nemeton-1 --node https://api.testnet.okp4.network:443/rpc \
        "{\"store_object\":{\"data\": \"$(cat text-ex.txt | base64 | tr -d '\n\r')\", \"pin\":true}}"
