rendering
renderActionsOn: html 
	self allowFiles 
		ifTrue: [ self renderActionUploadOn: html ].
	self renderActionAddOn: html