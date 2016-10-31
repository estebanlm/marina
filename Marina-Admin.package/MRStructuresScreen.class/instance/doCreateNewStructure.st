actions
doCreateNewStructure
	| definition newStructure |
	definition := self callScreen: self createNewStructureScreen.
	definition ifNil: [ ^ self ].
	
	newStructure := definition createStructure. 
	newStructure addTo: self structure.
	self editStructure: newStructure