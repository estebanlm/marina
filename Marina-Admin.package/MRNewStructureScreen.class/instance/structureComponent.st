private accessing
structureComponent
	^ structureComponent ifNil: [ structureComponent := self createStructureComponent ]