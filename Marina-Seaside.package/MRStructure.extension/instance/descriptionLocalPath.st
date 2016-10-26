*Marina-Seaside
descriptionLocalPath
	<magritteDescription>

	^ MAStringDescription new 
		priority: 20;
		label: 'Path';
		accessor: #localPath;
		componentClass: MDLMATextInputComponent;
		cssClass: 'structure_local_path';
		beRequired;
		yourself