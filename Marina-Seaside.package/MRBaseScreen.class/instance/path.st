accessing
path 
	self parent ifNil: [ ^ { self } ].
	^ self parent path, { self }