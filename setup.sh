#! /bin/bash 
echo echo 17 > /sys/class/gpio/export 
echo out > /sys/class/gpio/gpio17/direction 

echo 'echo 1 > /sys/class/gpio/gpio17/value' > ~/switchOn
echo 'echo 0 > /sys/class/gpio/gpio17/value' > ~/switchOff
chmod 755 switchO*
geth --syncmode light --cache 64 --maxpeers 12
