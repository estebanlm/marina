rendering
structureComponent
	^ structureComponent ifNil: [ structureComponent := self createStructureComponent ]