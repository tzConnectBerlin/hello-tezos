#!/bin/sh

burn_cap=0.5
contract_name=HelloWorld
account_name=alice

tezos-client originate contract ${contract_name} transferring 0 from ${account_name} \
	running ./contract.tz --init '""' --burn-cap 0.5 --force
