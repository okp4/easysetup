#!/bin/bash
# Want to know the Stargaze (stars) address from an OKP4 one?
# Here is an example to get it from okp416rry8kjuzpxezhf4g4lvjk67mkjc95lterek2u:
okp4d query logic ask \
--node https://api.testnet.okp4.network:443/rpc \
"bech32_address(-(Prefix, Words), okp416rry8kjuzpxezhf4g4lvjk67mkjc95lterek2u), bech32_address(-(stars, Words), StarsEncodedAddr)."
