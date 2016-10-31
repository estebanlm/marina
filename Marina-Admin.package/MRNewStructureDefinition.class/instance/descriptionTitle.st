descriptions
descriptionTitle
	<magritteDescription>
	
	^ MAStringDescription new
		priority: 10;
		label: 'Title';
		accessor: #title;
		componentClass: MDLMATextInputComponent;
		cssClass: 'structure_title';
		beRequired;
		default: self class defaultTitle;
		addCondition: [ :v | v ~= self class defaultTitle ] 
			labelled: 'You have to put a decent name to the new structure.'; 
		yourself