public
setupVoyage
	| mongoHost repository |
	
	mongoHost := UIManager default 
		request: 'MongoDB database url' 
		initialAnswer: 'localhost' 
		title: 'MongoDB url'.
	
	repository := VOMongoRepository host: mongoHost database: 'marina'.
	repository enableSingleton.
	^ repository