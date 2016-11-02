rendering
renderCellLinkContent: anObject on: html
	self commands
		do: [ :each | each render: anObject on: html ]
		separatedBy: [ html space; space ]