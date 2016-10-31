*Marina-Admin
descriptionEmail
	<magritteDescription>
	<report>
	
	^ MAStringDescription new 
		priority: 10;
		label: 'E-Mail';
		accessor: #email;
		componentClass: MDLMATextInputComponent;
		beRequired;
		yourself