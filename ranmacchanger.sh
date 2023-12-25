#!/bin/bash
macchanger -l > vmac.txt
umac=$(shuf -n 1 vmac.txt | awk '{print$3}')
rmac=$(printf '%02x:%02x:%02x' $[RANDOM%256] $[RANDOM%256] $[RANDOM%256])
macchanger -m "$umac:$rmac" enp0s3