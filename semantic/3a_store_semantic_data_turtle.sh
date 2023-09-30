# insert triples from a file in a cognitarium instance (okp41wn625s4jcmvk0szpl85rj5azkfc6suyvf75q6vrddscjdphtve8sug4ars)
# you should replace the smart contract address as you can only insert in a database (cognitarium instance) you created
# execute an 'insert_data' message, see https://docs.okp4.network/contracts/okp4-cognitarium#executemsginsertdata
# replace mywalokp41cu9wzlcyyxpek20jaqfwzu3llzjgx34cwnv2v5let by your wallet address
okp4d tx wasm execute okp41wn625s4jcmvk0szpl85rj5azkfc6suyvf75q6vrddscjdphtve8sug4ars \
--from okp41cu9wzlcyyxpek20jaqfwzu3llzjgx34cwnv2v5 \
--gas 10000000 \
--node https://api.testnet.okp4.network:443/rpc \
--chain-id okp4-nemeton-1 \
"{\"insert_data\":{\"format\": \"turtle\", \"data\": \"$(cat 03230ce7-d8cb-410e-919e-19c480c1dd75.ttl | base64 | tr -d '\n\r')\"}}"
