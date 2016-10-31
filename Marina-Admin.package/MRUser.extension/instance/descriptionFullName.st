*Marina-Admin
descriptionFullName
	<magritteDescription>
	<report>
	
	^ MAStringDescription new 
		priority: 20;
		label: 'Full name';
		accessor: #fullName;
		componentClass: MDLMATextInputComponent;
		beRequired;
		yourself