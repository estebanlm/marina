rendering
renderCellLinkContent: anObject on: html
	self commands
		do: [ :each |
			html mdlButton
				fab;
				miniFab;
				callback: [ each key value: anObject ];
				with: each value ]
		separatedBy: [ html space; space ]