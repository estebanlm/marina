private accessing
rows
	^ self structure children 
		sorted: [ :a :b | a publicationDate > b publicationDate ]