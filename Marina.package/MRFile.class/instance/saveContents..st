accessing
saveContents: aByteArray
	| directory file |
	directory := (self class resourcesDirectory / (UUID new asString36 first: 10))
		ensureCreateDirectory.
	file := directory / self title.
	file writeStreamDo: [ :stream | 
		stream binary nextPutAll: aByteArray ].
	self reference: file