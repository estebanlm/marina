exporting
mustacheContext
	^ super mustacheContext 
		at: 'publicationDate' put: self publicationDate asEmailString;
		yourself