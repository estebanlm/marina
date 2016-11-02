descriptions
descriptionFileModel
	<magritteDescription>
	
	^ MAFileDescription new
		priority: 10;
		label: 'File';
		accessor: #fileModel;
		beRequired;
		componentClass: MDLMAFileUploadComponent;
		yourself