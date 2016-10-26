accessing
binaryContents
	^ self reference 
		binaryReadStreamDo: [ :stream | stream contents ]