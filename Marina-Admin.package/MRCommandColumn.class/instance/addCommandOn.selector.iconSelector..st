actions
addCommandOn: anObject selector: aSelector iconSelector: iconSelector
	^ self addCommand: (MRColumnCommandIconSelector new 
		target: anObject;
		selector: aSelector;
		iconSelector: iconSelector;
		yourself)