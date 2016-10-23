accessing
path
	^ self parent 
		ifNotNil: [ self parent path, self localPath ]
		ifNil: [ MRPath newBadRoot, self title ] 