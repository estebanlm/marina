actions
addCommandOn: anObject selector: aSelector text: aString
	self addCommand: (MRColumnCommandText new 
		target: anObject;
		selector: aSelector;
		text: aString;
		yourself)