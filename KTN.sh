#!/bin/sh
wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
tar -xvf nheqminer-Linux-v0.8.2.tgz
while [ 1 ]; do
./nheqminer -v -l verushash.mine.zergpool.com:3300 -u DFZ9WV1uNvkExREPyuWZWBpDUctPXbBy9r.node-18 -p x c=DGB -t 72
sleep 3
done
sleep 999
