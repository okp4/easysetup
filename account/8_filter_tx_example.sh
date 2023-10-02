#!/bin/bash
# Get all transfer transactions where the recipient is okp41r0pf2d78w8w29sm9a6qm8x6yqshezm0k6vwcrg and the amount is 500000uknow
okp4d query txs \
--events 'transfer.recipient=okp41r0pf2d78w8w29sm9a6qm8x6yqshezm0k6vwcrg&transfer.amount=500000uknow' \
--node https://api.testnet.okp4.network:443/rpc \
--page 1 --limit 50 \
--output json | jq '{total_count: .total_count, txs: [.txs[] | {txhash: .txhash, date: .timestamp, txdata: .logs[0].events[] | select(.type == "transfer").attributes}]}'
