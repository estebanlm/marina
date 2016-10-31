rendering
renderActionsOn: html 
		html mdlAnchor 
			class: 'add_structure';
			fab;
			colored;
			rippleEffect;
			callback: [ self doCreateNewStructure ];
			with: [ html mdlIcon: 'add' ].