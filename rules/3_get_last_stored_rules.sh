okp4d query wasm contract-state smart okp41lppz4x9dtmccek2m6cezjlwwzup6pdqrkvxjpk95806c3dewgrfq602kgx \
--output json \
--chain-id okp4-nemeton-1 \
--node https://api.testnet.okp4.network:443/rpc \
"{\"object_data\": {\"id\": $(okp4d query txs --events 'message.sender=okp41z4ldttn975ku764er2nvtfq47n6n7jfxnkc2k9&instantiate.code_id=5' \
--chain-id okp4-nemeton-1  --node https://api.testnet.okp4.network:443/rpc \
--output json | jq '.txs[-1].logs[-1].events[] | select(.type == "wasm").attributes[] | select(.key == "id").value')}}" \
| jq '.data' | tr -d '"' | base64 -d
