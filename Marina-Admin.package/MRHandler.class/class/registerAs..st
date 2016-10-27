registering
registerAs: aString
	self = MRHandler 
		ifTrue: [ self error: 'I''m an abstract class, you need to register any of my children.' ].
	^ WAAdmin register: self at: aString