var checkTimer = 200;

function checkProgress() {
	var syncObject = web3.eth.syncing;
	var outText = '';

	var isMiningText     = "Is mining?:    " + web3.eth.mining;


	if(syncObject) {
		var totalSyncPercent = syncObject.highestBlock / syncObject.currentBlock;
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

var checkTimeout = setTimeout(function(){console.log(checkProgress())}, checkTimer);

