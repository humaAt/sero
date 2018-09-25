#!/bin/bash

nohup  ./gero --datadir chain --port 30314  --rpc --rpcport 8545 --rpcaddr "0.0.0.0" --rpccorsdomain "*" --nodiscover --dev --devpassword 123456 --gcmode archive --rpcapi 'personal,db,sero,net,web3,txpool,miner' &

