#!/bin/bash

# Rules & query example from account balace
#
# Prolog program:
#
# bank_balances_has_sufficient_coin(Addr, Limit, Unit) :-
#    bank_balances(Addr, [Unit-Nb]),
#    compare(>, Nb, Limit).
okp4d query logic ask \
    --node https://api.testnet.okp4.network:443/rpc \
    --program "bank_balances_has_sufficient_coin(Addr, Limit, Unit) :- bank_balances(Addr, [Unit-Nb]), compare(>, Nb, Limit)." \
    "bank_balances_has_sufficient_coin(okp416rry8kjuzpxezhf4g4lvjk67mkjc95lterek2u, 9899958230, uknow)."
