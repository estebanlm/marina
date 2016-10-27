*Marina-Admin
descriptionTitle
	<magritteDescription>
	<report>

	^ MAStringDescription new 
		priority: 10;
		label: 'Title';
		accessor: #title;
		componentClass: MDLMATextInputComponent;
		cssClass: 'structure_title';
		beRequired;
		yourself