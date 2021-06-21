#!/bin/sh

contract_name=HelloWorld

tezos-client get contract storage for ${contract_name}
