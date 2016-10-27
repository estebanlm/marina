actions
addCommandOn: anObject selector: aSelector icon: aString
	"Just a synonym to make code easier to read"
	^ self addCommandOn: anObject selector: aSelector text: [ :v | aString ]