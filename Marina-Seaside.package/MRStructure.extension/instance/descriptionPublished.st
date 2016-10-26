*Marina-Seaside
descriptionPublished
	<magritteDescription>

	^ MABooleanDescription new 
		priority: 1000;
		label: 'Published';
		accessor: #published;
		beRequired;
		componentClass: MDLMACheckboxComponent;
		cssClass: 'structure_published';
		trueString: 'Yes';
		falseString: 'No';
		yourself