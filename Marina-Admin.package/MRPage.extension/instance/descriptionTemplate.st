*Marina-Admin
descriptionTemplate
	<magritteDescription>
	
	^ MASingleOptionDescription new 
		priority: 100;
		label: 'Template';
		accessor: #template;
		options: self mainTemplates;
		reference: (MAStringDescription new accessor: #title); 
		default: self defaultTemplate;
		componentClass: MDLMASelectListRowsComponent;
		beRequired;
		yourself