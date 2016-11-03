*Marina-Admin
nextPutAll: aStringOrByteArray 
	aStringOrByteArray isString ifFalse: [ ^ super nextPutAll: aStringOrByteArray ].
	aStringOrByteArray isByteString ifTrue: [ ^ self encodeFast: aStringOrByteArray ].
	^ self encodeDefault: aStringOrByteArray