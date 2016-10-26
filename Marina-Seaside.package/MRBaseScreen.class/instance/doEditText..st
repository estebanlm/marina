actions
doEditText: aFile
	self showScreen: (MRFileTextScreen new 
		file: aFile;
		yourself)