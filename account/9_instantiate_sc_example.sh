# instantiate an objectarium (code id = 4) smart contract
# see https://docs.okp4.network/contracts/okp4-objectarium#instantiatemsg
# replace okp41cu9wzlcyyxpek20jaqfwzu3llzjgx34cwnv2v5 with your wallet address
okp4d tx wasm instantiate 4 \
--label "cli-instanciate-test-$(date +%s)" \
--from okp41cu9wzlcyyxpek20jaqfwzu3llzjgx34cwnv2v5 \
--admin okp41cu9wzlcyyxpek20jaqfwzu3llzjgx34cwnv2v5 \
--gas 1000000 \
--chain-id okp4-nemeton-1 --node https://api.testnet.okp4.network:443/rpc \
'{"bucket":"cli-tutorial-bucket"}'

