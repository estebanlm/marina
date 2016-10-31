descriptions
availableStructureClasses
	^ availableStructureClasses ifNil: [ self structure validChildrenClasses ]