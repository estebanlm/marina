*Marina-Seaside
descriptionTitle
	<magritteDescription>

	^ MAStringDescription new 
		priority: 10;
		label: 'Title';
		accessor: #title;
		componentClass: MDLMATextInputComponent;
		cssClass: 'structure_title';
		beRequired;
		yourself