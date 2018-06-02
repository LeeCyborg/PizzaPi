var checkTimer = 2000;

function checkProgress() {
	var syncObject = web3.eth.syncing;
	var outText = '';

	var isMiningText     = "Is mining?:    " + web3.eth.mining;


	if(syncObject) {
		var totalSyncPercent =(syncObject.currentBlock / syncObject.highestBlock) * 100;
		var totalSyncText    = "Total sync:    " + totalSyncPercent;
		var highBlockText    = "Top Block:     " + syncObject.highestBlock;
		var currBlockText    = "Current Block: " + syncObject.currentBlock;

		outText = "\n" + 
			  totalSyncText + "\n" +
		          highBlockText + "\n" +
			  currBlockText + "\n";
	}

	outText += isMiningText + "\n";

	return outText;    
}

var checkTimeout = setInterval(function(){console.log(checkProgress())}, checkTimer);

