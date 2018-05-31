check()
{
	VALUE=$(geth attach --exec "web3.eth.getBalance(eth.coinbase)")

	if [ $VALUE -eq 0 ]
		then 
			./switchOn;
			sleep 1;
			./switchOff;
			sleep 1;

		else
			./switchOn;
	fi
}

while true; do check; sleep 5; done;