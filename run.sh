#!/usr/bin/with-contenv bashio
 
echo "Duino-Coin Official PC Miner"
echo "https://github.com/revoxhere/duino-coin"
echo ""
echo "Hassio Port https://github.com/DjLex2021/duino_hassio"
echo ""
echo ""

USERNAME=$(bashio::config 'username')
MINING_KEY=$(bashio::config 'mining_key')
RIG_NAME=$(bashio::config 'rig_name')
START_DIFF=$(bashio::config 'start_diff')
THREADS=$(bashio::config 'threads')

echo "Username: " $USERNAME
echo "Mining-Key: " $MINING_KEY
echo "Rig-ID: " $RIG_NAME

echo "Run Duino-Coin PC Miner with " $THREADS " threads . . ."
python3 PC_Miner.py $USERNAME $MINING_KEY $RIG_NAME $START_DIFF $THREADS
