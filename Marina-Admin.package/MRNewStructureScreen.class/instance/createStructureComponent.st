rendering
createStructureComponent
	^ (self createStructureDefinition asComponent
		addDecoration: MDLMAValidationDecoration new;
		addDecoration: (MDLMAFormDecoration 
			buttons: { 
				#cancel -> 'Cancel'.
				#save -> 'Create'
			});
		onAnswer: [ :v | self answer: v ];
		yourself)