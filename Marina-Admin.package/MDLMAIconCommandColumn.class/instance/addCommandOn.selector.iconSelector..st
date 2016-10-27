actions
addCommandOn: anObject selector: aSelector iconSelector: iconSelector
	"Just a synonym to make code easier to read"
	^ self 
		addCommandOn: anObject 
		selector: aSelector 
		text: (MessageSend 
			receiver: anObject 
			selector: iconSelector)