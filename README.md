# Pizza Pi 

## Purpose 
Mining ethereum on rasp pi for pizza 

## setup
configure 
``` $ sudo raspi-config ```
3 → Boot
B1 → Desktop / CLI
B1 → Console
7 → Advanced
A3 → Memory Split
16 (MB)
Reboot 

```$ sudo apt-get install git golang libgmp3-dev```


```$ mkdir src

$ cd src

$ git clone -b release/1.7 https://github.com/ethereum/go-ethereum.git

$ cd go-ethereum

$ make

$ sudo cp build/bin/geth /usr/local/bin/```


make new account 
``` $ geth account new```


## Files

### Checker
Checks eth wallet if anything has been mined
```./checker.sh```

### Setup 
Sets up IO pins and run geth
```./setup.sh```



## TODO
 - create script for settup 
 - check IPC for disconnect 
 - check if node is synced 
 - make image
 - solve wifi problem
 - how to get accounts? 




