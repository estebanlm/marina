*Marina-Seaside
editStructureOn: aScreen
	self isImage ifTrue: [ ^ aScreen doEditImage: self ].
	self isText ifTrue: [ ^ aScreen doEditText: self ].
	aScreen doEditFile: self