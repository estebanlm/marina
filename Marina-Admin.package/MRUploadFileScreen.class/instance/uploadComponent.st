private accessing
uploadComponent
	^ uploadComponent ifNil: [ uploadComponent := self createUploadComponent ]