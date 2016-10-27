actions
doEditImage: aFile
	self showScreen: (MRFileImageScreen new 
		file: aFile;
		yourself)