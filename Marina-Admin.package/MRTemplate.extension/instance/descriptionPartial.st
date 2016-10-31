*Marina-Admin
descriptionPartial
	<magritteDescription>
	<report>
	
	^ MABooleanDescription new 
		priority: 110;
		label: 'Partial';
		accessor: #partial;
		componentClass: MDLMACheckboxComponent;
		trueString: 'Partial template';
		falseString: 'Main template'
		yourself