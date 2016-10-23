accessing
webContents
	^ self reference binaryReadStreamDo: [ :stream |
		(ZnEntity bytes:  stream contents)
			contentType: self contentType;
			yourself ]