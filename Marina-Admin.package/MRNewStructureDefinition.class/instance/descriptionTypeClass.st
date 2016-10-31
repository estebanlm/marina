descriptions
descriptionTypeClass
	<magritteDescription>
	
	^ MASingleOptionDescription new
		priority: 20;
		label: 'Type';
		accessor: #typeClass;
		options: self availableStructureClasses;
		reference: (MAStringDescription new accessor: #label); 
		componentClass: MDLMASelectListRowsComponent;
		cssClass: 'structure_type';
		beRequired;
		yourself