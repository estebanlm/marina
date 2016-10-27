private accessing
rows
	^ super rows sorted: [ :a :b | a publicationDate > b publicationDate ]