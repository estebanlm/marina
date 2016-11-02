accessing
childTitled: aString
	^ self children 
		detect: [ :child | child title = aString ] 
		ifNone: [ nil ]