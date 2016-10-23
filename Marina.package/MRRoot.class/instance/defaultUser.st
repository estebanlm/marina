accessing
defaultUser
	^ self users 
		ifNotEmpty: [ self users first ]
		ifEmpty: [ nil ] 