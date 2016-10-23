public
startWebserverWith: serverBasePath port: serverPort
	ZnZincServerAdaptor stop; startOn: serverPort.
	WAAdmin register: MRDispatcher at: serverBasePath.
	"TDServer startOn: serverPort.
	TDServer server serverUrl: 'http://', (serverBasePath trimRight: [:char | char = $/ ])."