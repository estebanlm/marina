factory
createTemplateTitle: aTitle
	<action>
	^ self add: (MRTemplate new
		title: aTitle;
		yourself)