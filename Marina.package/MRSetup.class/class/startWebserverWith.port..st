public
startWebserverWith: serverBasePath port: serverPort
	ZnZincServerAdaptor stop; startOn: serverPort.
	MRHandler registerAll.
	"TDServer startOn: serverPort.
	TDServer server serverUrl: 'http://', (serverBasePath trimRight: [:char | char = $/ ])."