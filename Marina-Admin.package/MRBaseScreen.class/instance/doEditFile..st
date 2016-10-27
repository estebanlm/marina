actions
doEditFile: aFile
	self showScreen: (MRFileScreen new 
		file: aFile;
		yourself)