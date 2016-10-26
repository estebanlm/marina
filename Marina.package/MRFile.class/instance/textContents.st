accessing
textContents
	^ self reference 
		readStreamDo: [ :stream | stream contents ]