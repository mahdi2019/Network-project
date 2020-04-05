#!/usr/bin/env bash

./ip.sh wlp2s0


konsole --noclose -e sudo python pol.py --profile "police" &disown
sleep 2
konsole --noclose -e sudo python bank.py --profile "bank" &disown
sleep 2
konsole --noclose -e sudo python insurance.py --profile "insurance" &disown
sleep 2
konsole --noclose -e sudo python gasstation.py --profile "insurance" &disown

sleep 2
konsole --noclose -e sudo python dri.py --profile "driver" &disown

# for i in {1..($3)}; do
#     xterm -e ./client $1 $2 &disown
# done