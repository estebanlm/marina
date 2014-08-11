accessing
childNamed: aName
		^ self children 
			detect: [ :child | child localPath = aName urlEncoded ] 
			ifNone: [ nil ]