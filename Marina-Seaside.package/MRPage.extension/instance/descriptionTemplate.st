*Marina-Seaside
descriptionTemplate
	<magritteDescription>
	
	^ MASingleOptionDescription new 
		priority: 100;
		label: 'Template';
		options: self mainTemplates;
		default: self defaultTemplate;
		componentClass: MDLMASelectListRowsComponent;
		beRequired;
		yourself