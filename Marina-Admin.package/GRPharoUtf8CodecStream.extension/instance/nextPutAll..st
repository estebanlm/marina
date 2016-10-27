*Marina-Admin
nextPutAll: aStringOrByteArray 
	aStringOrByteArray isString ifFalse: [ ^ aStringOrByteArray ].
	aStringOrByteArray isByteString ifTrue: [ ^ self encodeFast: aStringOrByteArray ].
	^ self encodeDefault: aStringOrByteArray