actions
doUploadFile
	| definition file |
	
	definition := self callScreen: self createUploadScreen.
	definition ifNil: [ ^ self ].
	
	file := definition createFile.
	file addTo: self structure.
	file saveContents: definition contents