#!/usr/bin/env bash
#
#
#GPIO_EXPORT='/sys/class/gpio/export'
#
## Change this to the pin you want to use
#GPIO_PIN='17'
#
#GPIO_ACTIVE="/sys/class/gpio/gpio$GPIO_PIN"
#
#if [ ! -e "$GPIO_ACTIVE" ]
#then
#    sudo echo $GPIO_PIN > $GPIO_EXPORT
#    sudo echo out > $GPIO_ACTIVE/direction
#fi
#
#echo "echo 1 > $GPIO_ACTIVE/value" > ./switchOn
#echo "echo 0 > $GPIO_ACTIVE/value" > ./switchOff

sudo echo 17 > /sys/class/gpio/export #green
sudo echo 27 > /sys/class/gpio/export #red
sudo echo 22 > /sys/class/gpio/export #yellow 
sudo echo out > /sys/class/gpio/gpio22/direction
sudo echo out > /sys/class/gpio/gpio27/direction
sudo echo out > /sys/class/tpio/gpio17/direction

## This will make both files executable
echo 'echo 1 > /sys/class/gpio/gpio17/value' > ./switchOnGreen
echo 'echo 0 > /sys/class/gpio/gpio17/value' > ./switchOffGreen
echo 'echo 1 > /sys/class/gpio/gpio27/value' > ./switchOnRed
echo 'echo 0 > /sys/class/gpio/gpio27/value' > ./switchOffRed
echo 'echo 1 > /sys/class/gpio/gpio22/value' > ./switchOnYellow
echo 'echo 0 > /sys/class/gpio/gpio22/value' > ./switchOffYellow


chmod 755 switchO*

## To understand the redirection here, see: https://stackoverflow.com/a/692407
geth --fast --cache 64 --maxpeers 12 > >(tee -a ~/.ethereum/stdout.log) 2> >(tee -a stderr.log >&2) 

#sleep 20;
#
#while $(geth attach --exec "web3.eth.syncing"); do echo "syncing"; done;


