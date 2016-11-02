actions
addStructure
	| definition newStructure |
	
	definition := self callScreen: self createNewStructureScreen.
	definition ifNil: [ ^ self ].
	newStructure := definition createStructure. 
	newStructure addTo: self structure.
	self refreshReport.
	self editStructure: newStructure