accessing
availableStructureClasses
	^ availableStructureClasses ifNil: [ self structure validChildrenClasses ]