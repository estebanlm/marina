instance creation
specification: aString
	^ self basicNew 
		initializeSpecification: aString;
		yourself