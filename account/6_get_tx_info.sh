# change the hash 4DB4644E6146DE0E7239C5273F79C931193F542D62979ACB907C9368A315DCE1 to get information for another transaction
okp4d query tx 4DB4644E6146DE0E7239C5273F79C931193F542D62979ACB907C9368A315DCE1 \
--node https://api.testnet.okp4.network:443/rpc \
--output json | jq '.tx.body.messages[0]'
