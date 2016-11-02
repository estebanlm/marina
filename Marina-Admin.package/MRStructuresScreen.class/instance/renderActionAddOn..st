rendering
renderActionAddOn: html
	html mdlAnchor 
		id: 'add_structure';
		class: 'action_button';
		fab;
		primaryColor;
		rippleEffect;
		callback: [ self addStructure ];
		with: [ html mdlIcon: 'add' ].
	html mdlTooltip for: 'add_structure'; with: 'Add new structure'.
			