#!/bin/bash
# select query, see https://docs.okp4.network/contracts/okp4-cognitarium#selectquery
okp4d query wasm contract-state smart okp41wn625s4jcmvk0szpl85rj5azkfc6suyvf75q6vrddscjdphtve8sug4ars \
--chain-id okp4-nemeton-1 \
--node https://api.testnet.okp4.network:443/rpc \
--output json \
'{"select":{"query":{"prefixes":[{"prefix":"core","namespace":"https://ontology.okp4.space/core/"}],"select":[{"variable":"serviceId"}],"where":[{"simple":{"triple_pattern":{"subject":{"variable":"serviceMetadataId"},"predicate":{"node":{"named_node":{"full":"https://ontology.okp4.space/core/describes"}}},"object":{"variable":"serviceId"}}}},{"simple":{"triple_pattern":{"subject":{"variable":"serviceMetadataId"},"predicate":{"node":{"named_node":{"prefixed":"core:hasTag"}}},"object":{"literal":{"simple":"stockage"}}}}}],"limit":2}}}' \
| jq '.data.results.bindings'
