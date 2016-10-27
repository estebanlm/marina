rendering
renderCellLinkContent: anObject on: html
	self commands 
		do: [ :each |
			html mdlAnchor
				fab;
				miniFab;
				"colored;"
				"rippleEffect;"
				callback: [ each key value: anObject ];
				with: [ html mdlIcon: (each value value: anObject)] ]
		separatedBy: [ html space; space ]