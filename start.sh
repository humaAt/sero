#!/bin/bash

#!/bin/bash

sh stop.sh

total=0
if [ -n "$1" ]; then
    total=$(expr $i - 1)
fi

for i in $(seq 0 $total)  
do   
echo "start $i"  
	echo $LD_LIBRARY_PATH
	nohup  bin/gero --datadir "chain_$i" --port $(expr $i + 30310)  --rpc --rpcport $(expr $i + 8545) --rpcaddr "0.0.0.0" --rpccorsdomain "*" --dev --devpassword 123456 --gcmode archive --rpcapi 'personal,db,sero,net,web3,txpool,miner' > log/$i.log &
done
