accessing
serverPath
	^ String
		streamContents: [ :stream | 
			stream
				nextPut: $/;
				nextPutAll: MTPagesHandler deployedPath;
				print: self ]