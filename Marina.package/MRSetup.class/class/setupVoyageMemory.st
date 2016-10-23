public
setupVoyageMemory
	| repository |
	
	repository := VOMemoryRepository new.
	repository enableSingleton.
	^ repository