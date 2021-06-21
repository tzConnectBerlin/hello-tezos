#!/bin/bash

if [[ -z "${1}" ]]; then
echo "Usage: ./call.sh {your name here}"
echo "Eg. ./call.sh Andrea"
exit 1
fi

burn_cap=0.5
contract_name=HelloWorld
account_name=alice

tezos-client transfer 0 from alice to HelloWorld --burn-cap 0.5 --entrypoint personalized --arg \"${1}\"