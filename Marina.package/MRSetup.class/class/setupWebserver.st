public
setupWebserver
	| serverBasePath serverPort |
	serverBasePath := UIManager default request: 'Base path where the server is going to be deployed (e.g., "marina")' initialAnswer: 'marina' title: 'Server base path'.
	serverBasePath isEmptyOrNil ifTrue: [ serverBasePath := 'marina' ].
	serverPort := UIManager default request: 'Port where the server should listen to (e.g., 8080)' initialAnswer: '8080'  title: 'Server port'.
	serverPort isEmptyOrNil ifTrue: [ serverPort := '8080' ].
	serverPort := Number readFrom: serverPort.
	self startWebserverWith: serverBasePath port: serverPort