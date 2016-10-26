accessing
webContents
	^ (ZnEntity bytes: self binaryContents)
			contentType: self contentType;
			yourself 