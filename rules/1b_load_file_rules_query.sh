#!/bin/bash
okp4d query logic ask \
--node https://api.testnet.okp4.network:443/rpc \
--program-file my_knowledgebase.pl \
"can_vote(X)."
