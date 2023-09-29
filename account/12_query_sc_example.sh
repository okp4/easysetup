# object_data query message to an objectarium instance (okp41tca04wdta7pyzzyetgqyl2rn9v5vgxq0cwvdduel8sgw4g64at7q8jja85, id = 71f9954abebbd23da1664914cd599f8039585fa3d81735b4abe20893abd32213)
# see https://docs.okp4.network/contracts/okp4-objectarium#querymsgobjectdata
okp4d query wasm contract-state smart okp41tca04wdta7pyzzyetgqyl2rn9v5vgxq0cwvdduel8sgw4g64at7q8jja85 \
--output json \
--chain-id okp4-nemeton-1 \
--node https://api.testnet.okp4.network:443/rpc \
"{\"object_data\": {\"id\":\"71f9954abebbd23da1664914cd599f8039585fa3d81735b4abe20893abd32213\"}}" \
| jq '.data' | tr -d '"' | base64 -d

