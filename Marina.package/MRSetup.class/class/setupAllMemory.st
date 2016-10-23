public
setupAllMemory
	(self confirm: 'This will erase your marina database, are you *really* sure?')
		ifTrue: [ 
			self
				setupVoyageMemory;
				setupWebsite;
				setupWebserver ]