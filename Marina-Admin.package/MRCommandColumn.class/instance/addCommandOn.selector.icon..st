actions
addCommandOn: anObject selector: aSelector icon: aString
	^ self addCommand: (MRColumnCommandIcon new 
		target: anObject;
		selector: aSelector;
		icon: aString;
		yourself)