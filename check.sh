check()
{
	VALUE=$(geth attach --exec "web3.eth.getBalance(eth.coinbase)")

	if [ $VALUE -eq 0 ]
	then 
		./lighton;
		sleep 1;
		./lightoff;
		sleep 1;
	else 
		./lighton;
	fi
}
while true; do check; sleep 10; done
