accessing
createFile
	^ MRFile new
		title: self fileModel filename;
		contentType: self fileModel mimetype asZnMimeType;
		yourself