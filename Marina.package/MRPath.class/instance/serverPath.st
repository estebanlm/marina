accessing
serverPath
	self flag: #todo. "This may be wrong."
	^ String streamContents: [ :stream | 
		stream
			print: self class baseUrl;
			print: self ]