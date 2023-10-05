#!/bin/bash

okp4d query txs \
    --events 'wasm.action=insert' \
    --chain-id okp4-nemeton-1 \
    --node https://api.testnet.okp4.network:443/rpc --output json | jq \
    '{total_count: .total_count, txs: [.txs[] | {task_id: 5, tx: .txhash, date: .timestamp, okp4_sender: .tx.body.messages[0].sender, task_data: { cognitarium_sc_addr: .tx.body.messages[0].contract, data: .tx.body.messages[0].msg.insert_data.data | @base64d  } }]}'
